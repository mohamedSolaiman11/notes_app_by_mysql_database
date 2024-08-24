import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/ui/screen/login/screen/login.dart';
import 'package:notes_app_by_mysql_database/utils/constants/all_text_in_app.dart';
import 'package:notes_app_by_mysql_database/utils/constants/color.dart';
import 'package:notes_app_by_mysql_database/utils/constants/custom_navigation.dart';

import '../../../../utils/constants/custom_text.dart';
import '../../../../utils/constants/custom_text_size.dart';

class CustomTextView extends StatelessWidget {
  CustomTextView({super.key, required this.subtitle1, this.subtitle2});
  final String subtitle1;
  String? subtitle2;
  TextDecoration textDecoration = TextDecoration.underline;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText.mediumText(subtitle1,size: CustomTextSize.regularSize16),
          GestureDetector(
            onTap: (){
              if(subtitle2 == AppText.loginHere){
                CustomNavigation.pushReplacement(context,const Login());
              }
            },
              child: CustomText.mediumText(subtitle2??"",fontWeight:subtitle2 ==AppText.loginHere||subtitle2 ==AppText.createAccountHere?FontWeight.w500 :FontWeight.w300,size:subtitle2 ==AppText.loginHere||subtitle2 ==AppText.createAccountHere? CustomTextSize.regularSize17:CustomTextSize.regularSize16,color: subtitle2 ==AppText.loginHere||subtitle2 ==AppText.createAccountHere?AppColors.primaryColor:AppColors.black,textDecoration: subtitle2 ==AppText.loginHere||subtitle2 ==AppText.createAccountHere?textDecoration:TextDecoration.none)),
        ],
      ),
    );
  }
}
