import 'package:flutter/material.dart';

import '../../../../utils/constants/image_url.dart';
class SplashImage extends StatelessWidget {
  const SplashImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImage.splash);
  }
}
