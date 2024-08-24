import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/utils/constants/all_text_in_app.dart';

import '../../../../utils/constants/custom_text_size.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Center(
          child: RichText(
        text:  const TextSpan(
          text: AppText.agreeToTerms, // Normal text
          style: TextStyle(
            fontSize: CustomTextSize.regularSize17,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: AppText.youAgreeToTerms, // Bold text
              style: TextStyle(
                fontSize: CustomTextSize.regularSize16,
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(
              text: AppText.terms,
              style: TextStyle(
                fontSize: CustomTextSize.regularSize16,
                fontWeight: FontWeight.bold,
              ), // Normal text
            ),
            TextSpan(
              text: AppText.and,
              style: TextStyle(
                fontSize: CustomTextSize.regularSize16,
                fontWeight: FontWeight.normal,
              ), // Normal text
            ),
            TextSpan(
              text: AppText.privacPolicy,
              style: TextStyle(
                fontSize: CustomTextSize.regularSize16,
                fontWeight: FontWeight.bold,
              ), // Normal text
            ),
          ],

        ),
      )),
    );
  }
}
