import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/utils/constants/alert_dialog.dart';
import 'package:notes_app_by_mysql_database/utils/constants/all_text_in_app.dart';
import 'package:notes_app_by_mysql_database/utils/constants/color.dart';
import 'package:notes_app_by_mysql_database/utils/constants/custom_navigation.dart';

import '../../main.dart';
import '../../ui/screen/home.dart';
import '../../ui/screen/signUp/widgets/sign_up_successfully_message.dart';

class AuthService {
  static bool isAccountCreated = false;
  static bool clear = false;
  static const String _baseUrl = 'http://192.168.23.1:8080/testphp/auth';

  Future<void> signup(BuildContext context, String name, String email, String password, String confirmPassword) async {
    // Validate email format
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!emailRegex.hasMatch(email)) {
      ShowAlertDialog.showCustomModalBottomSheet(context,message:  'Invalid email format.');
      return;
    }
    // Validate passwords match
    if (password != confirmPassword) {
       ShowAlertDialog.showCustomModalBottomSheet(context,message: 'Passwords do not match.');
      return;
    }
    // Validate password format
    final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{6,}$');
    if (!passwordRegex.hasMatch(password)) {
       ShowAlertDialog.showCustomModalBottomSheet(context,message:  'Password must be at least 8 characters long, an uppercase letter and a number only.');
      return;
    }

    // Send the request to the server
    final response = await http.post(
      Uri.parse('$_baseUrl/register.php'),
      body: {
        'name': name,
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword,
      },
    );

    // print('Response: ${response.body}');  // اطبع الاستجابة بالكامل

    try {
      final data = json.decode(response.body);
      if (data['status'] == 'success') {
        print(data['data']['email']);
        print(data['data']['password']);
        sharedPreferences?.setString('name', data['data']['name']) ;
        sharedPreferences?.setString('email', data['data']['email']) ;
        isAccountCreated = true;
         SignupSuccessMessage.flushBar(context, message: AppText.accountCreatedSuccessfully);

      } else {
        isAccountCreated = false;
        SignupSuccessMessage.flushBar(context, message: AppText.thereWasAnError,backgroundColor: AppColors.red);

      }
    } catch (e) {
      isAccountCreated = false;
      SignupSuccessMessage.flushBar(context, message: e.toString(),backgroundColor: AppColors.red);

    }
  }

  static Future<void> login(BuildContext context, String email, String password) async {
    // BlocProvider.of<LoadingCubit>(context, listen: false)
    //     .startLoading();
    final response = await http.post(
      Uri.parse('$_baseUrl/login.php'),
      body: {
        'email': email,
        'password': password,
      },
    );

    final data = json.decode(response.body);

    // تحقق من نجاح تسجيل الدخول
    if (data['status'] == 'success') {
      sharedPreferences?.setString('emailLogin', data['data']['email']) ;
      print(data['data']['email']);
      // BlocProvider.of<LoadingCubit>(context, listen: false)
      //     .successLoading();
      CustomNavigation.pushReplacement(context,const Home());
      SignupSuccessMessage.flushBar(context , message: AppText.loginSuccessful);
      clear = true;
    } else {
      // BlocProvider.of<LoadingCubit>(context, listen: false)
      //     .failureLoading();
      // عرض رسالة خطأ إذا فشل تسجيل الدخول باستخدام Modal Bottom Sheet
      ShowAlertDialog.showCustomModalBottomSheet(context, message: data['message']);
      clear = false;

    }
  }

}
