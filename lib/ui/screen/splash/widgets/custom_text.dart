import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/all_text_in_app.dart';
import '../../../../utils/constants/custom_text.dart';
import '../../../../utils/constants/custom_text_size.dart';

class SplashAppName extends StatelessWidget {
  const SplashAppName({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText.regularText(AppText.appName,
        size: CustomTextSize.regularSize24,
        fontWeight: FontWeight.bold);
  }
}
