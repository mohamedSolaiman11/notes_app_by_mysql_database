import 'package:flutter/material.dart';

import '../../../../utils/constants/all_text_in_app.dart';
import '../../../../utils/constants/color.dart';
import '../../../widgets/custom_button.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key, required this.ontap});
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      backgroundColor: AppColors.primaryColor,
      text: AppText.createAccount,
      forgroundColor:AppColors.secondaryColor ,
      ontap: ontap
    );
  }
}
