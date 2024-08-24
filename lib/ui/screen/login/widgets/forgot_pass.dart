import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/utils/constants/custom_text.dart';
import 'package:notes_app_by_mysql_database/utils/constants/custom_text_size.dart';

import '../../../../utils/constants/all_text_in_app.dart';

class CustomForgotPass extends StatelessWidget {
  const CustomForgotPass({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap ,child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomText.regularText(AppText.forgotPasswordQuestion,size: CustomTextSize.lightSize18,fontWeight: FontWeight.w300),
      ],
    ),
    );
  }
}
