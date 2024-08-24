import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/ui/screen/splash/widgets/splash-image.dart';

import '../../../../utils/constants/all_text_in_app.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/custom_text.dart';
import 'custom_text.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /////////////////Splash Image///////////////////
                  SplashImage(),
                  //////////////// App Name //////////////////////
                  SplashAppName()
                ],
              ),
            ),
            /////////////////////CopyRight Text///////////////////////
            CustomText.regularText(AppText.copyRight)
          ],
        ),
      ),
    );
  }
}
