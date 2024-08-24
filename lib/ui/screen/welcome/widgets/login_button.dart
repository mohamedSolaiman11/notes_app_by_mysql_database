import 'package:flutter/material.dart';
import '../../../../utils/constants/all_text_in_app.dart';
import '../../../widgets/custom_button.dart';

class WelcomeLoginButton extends StatelessWidget {
  const WelcomeLoginButton({super.key, required this.ontap, required this.forgroundColor, required this.backgroundColor});
  final Future<void> Function()? ontap;
  final Color forgroundColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      backgroundColor: backgroundColor,
      text: AppText.login,
      forgroundColor:  forgroundColor,
      ontap: ontap
    );
  }
}

