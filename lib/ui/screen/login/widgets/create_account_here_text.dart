import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/ui/screen/signUp/screen/signup.dart';
import 'package:notes_app_by_mysql_database/utils/constants/color.dart';
import 'package:notes_app_by_mysql_database/utils/constants/custom_navigation.dart';
import '../../../../utils/constants/all_text_in_app.dart';
import '../../../../utils/constants/custom_text.dart';
import '../../../../utils/constants/custom_text_size.dart';

class CreateAccountHereText extends StatelessWidget {
  const CreateAccountHereText({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          CustomNavigation.pushReplacement(context, Signup());
        },
        child: CustomText.mediumText(AppText.createAccountHere,size: CustomTextSize.regularSize17,color: AppColors.primaryColor,textDecoration: TextDecoration.underline,fontWeight: FontWeight.w700));
  }

}
