import 'package:notes_app_by_mysql_database/utils/constants/all_text_in_app.dart';
import 'package:notes_app_by_mysql_database/utils/constants/custom_text_size.dart';

import '../../../../utils/constants/custom_text.dart';
import 'package:flutter/material.dart';
class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText.mediumText(AppText.dontHaveAccount,size: CustomTextSize.regularSize17,fontWeight: FontWeight.w400);
  }
}
