import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_by_mysql_database/ui/screen/home.dart';
import 'package:notes_app_by_mysql_database/ui/screen/login/bloc/login_cubit.dart';
import 'package:notes_app_by_mysql_database/ui/screen/login/screen/login.dart';
import 'package:notes_app_by_mysql_database/ui/screen/signUp/screen/signup.dart';
import 'package:notes_app_by_mysql_database/ui/screen/splash/screen/splash.dart';
import 'package:notes_app_by_mysql_database/ui/screen/welcome/screen/welcome.dart';
import 'package:notes_app_by_mysql_database/utils/constants/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPreferences;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider (
          create: (BuildContext context) => LoginCubit(),
        ),


      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          Routes.splash.toString(): (_) => const Splash(),
          Routes.welcome.toString(): (_) => const Welcome(),
          Routes.login.toString(): (_) => const Login(),
          Routes.signup.toString(): (_) => Signup(),
          Routes.home.toString(): (_) => const Home()
        },
        initialRoute: Routes.splash.toString(),


      ),
    );
  }
}
