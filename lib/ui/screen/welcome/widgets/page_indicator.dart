import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/color.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, .94),
      child: SmoothPageIndicator(
        controller: pageController,
        count: 3,
        effect: const WormEffect(
            dotWidth: 34,
            activeDotColor: AppColors.primaryColor,
            dotColor: AppColors.secondaryColor,
            type: WormType.underground),
      ),
    );
  }
}
