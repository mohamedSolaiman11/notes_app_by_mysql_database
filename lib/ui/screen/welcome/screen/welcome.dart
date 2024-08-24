import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/ui/screen/welcome/widgets/login_button.dart';
import 'package:notes_app_by_mysql_database/utils/constants/color.dart';
import '../../../../utils/constants/custom_navigation.dart';
import '../../login/screen/login.dart';
import '../../signUp/screen/signup.dart';
import '../widgets/create_account_button.dart';
import '../widgets/page_view_with_indicator.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          const PageViewWithIndicator(),
          CreateAccountButton(ontap: ()async {
            CustomNavigation.push(context, Signup());
          },),
           WelcomeLoginButton(ontap: ()async {
               CustomNavigation.push(context,  const Login());
           }, forgroundColor: AppColors.primaryColor, backgroundColor: AppColors.secondaryColor,)
        ],
      ),
    );
  }
}

