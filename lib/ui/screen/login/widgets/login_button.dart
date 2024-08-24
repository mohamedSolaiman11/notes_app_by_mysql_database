import 'package:flutter/material.dart';
import '../../../../utils/constants/all_text_in_app.dart';
import '../../../../utils/constants/color.dart';
import '../../../widgets/custom_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.emailController,
    required this.passwordController, required this.ontap,
  });
  final void Function() ontap;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      backgroundColor: AppColors.primaryColor,
      text: AppText.login,
      forgroundColor: AppColors.secondaryColor,
      ontap: ontap,
    );
  }
}
