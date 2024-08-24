import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/ui/screen/splash/widgets/splash_body.dart';
import '../utils/custom_future_navigation.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    customNavigation(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return const SplashBody();

  }
}
