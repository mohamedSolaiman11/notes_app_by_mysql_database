import 'package:flutter/material.dart';

import '../../utils/constants/color.dart';
import '../../utils/constants/custom_text.dart';
import '../../utils/constants/custom_text_size.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      leadingWidth: 80,
      foregroundColor: AppColors.primaryColor,
      title: Row(
        children: [
          CustomText.regularText(text, size: CustomTextSize.regularSize18),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}