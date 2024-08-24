import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/utils/constants/custom_text.dart';

import '../../utils/constants/color.dart';
import '../../utils/constants/custom_text_size.dart';

class CustomOnboarding extends StatelessWidget {
  const CustomOnboarding(
      {super.key,
      required this.welcome,
      required this.note,
      required this.assetImage,
      required this.noteType,
      required this.desc});
  final String welcome;
  final String note;
  final String noteType;
  final String desc;
  final String assetImage;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        color: AppColors.background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width*.1,top: size.height*.06),
              child: CustomText.mixedText(welcome),
            ),

            Padding(
              padding: EdgeInsets.only(left: size.width*.1),
              child: CustomText.mixedText(note,size: CustomTextSize.mixedSize18,fontWeight: FontWeight.bold),
            ),
            Center(
              child: Image.asset(
                assetImage,
                width: size.width * .9,
                height: size.height * .46,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*.1),
              child: Row(
                children: [
                  CustomText.regularText(noteType,size: CustomTextSize.regularSize24,fontWeight: FontWeight.w500),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: size.width*.1),
              child: CustomText.lightText(desc),
            ),
          ],
        ),
      ),
    );
  }
}
