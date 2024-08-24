import 'package:flutter/material.dart';

import '../../../../utils/constants/all_text_in_app.dart';
import '../../../../utils/constants/image_url.dart';
import '../../../widgets/custom_onboarding.dart';

class CustomPageViewer extends StatelessWidget {
  const CustomPageViewer({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        CustomOnboarding(welcome: AppText.welcomeTo,
            note: AppText.appName,
            assetImage: AppImage.onBoardingOne ,
            noteType: AppText.takeNotes,
            desc: AppText.quicklyCapture
        ),
        CustomOnboarding(welcome: '',
            note: '',
            assetImage: AppImage.onBoardingTwo,
            noteType: AppText.todos,
            desc: AppText.listOutYourTasks
        ),
        CustomOnboarding(welcome: '',
            note: '',
            assetImage: AppImage.onBoardingThree,
            noteType: AppText.imageToText,
            desc: AppText.uploadImagesAndConvert
        )
      ],
    );

  }
}
