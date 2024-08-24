import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/utils/constants/custom_text.dart';

import '../../utils/constants/custom_text_size.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.text,
      required this.forgroundColor,
        required this.ontap});
  final Color backgroundColor;
  final Color forgroundColor;
  final String text;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width*.07,vertical: 10),
        width: double.infinity,
        height: size.height * .065,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(29),
        ),
        child: CustomText.regularText(text,
            size: CustomTextSize.lightSize20, color: forgroundColor),
      ),
    );
  }
}
