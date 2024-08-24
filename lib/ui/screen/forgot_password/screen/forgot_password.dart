import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/ui/screen/signUp/widgets/custom_text_fields.dart';
import 'package:notes_app_by_mysql_database/ui/widgets/custom_app_bar.dart';
import 'package:notes_app_by_mysql_database/utils/constants/all_text_in_app.dart';
import 'package:notes_app_by_mysql_database/utils/constants/color.dart';

import '../../../../utils/constants/custom_text.dart';
import '../../../../utils/constants/custom_text_size.dart';
import '../../../widgets/custom_button.dart';
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    TextEditingController emailController = TextEditingController();
    FocusNode focusNode = FocusNode();
    return  Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(text: AppText.forgotPassword),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width*.075,vertical: size.height*.06),
            child: Column(
              children: [
                CustomText.regularText(AppText.enterEmailToReset,
                    size: CustomTextSize.regularSize18,fontWeight: FontWeight.w300),
                SizedBox(height: size.height*.06,),
                CustomTextFields(prefixIcon: Icons.email_outlined,
                    textEditingController: emailController,
                    hint: AppText.email,
                    focusNode: focusNode,
                    errorValidatorText: AppText.enterEmail,
                    isValidInput: true),
                SizedBox(
                  height: size.height*.3,
                ),
              ],
            ),
          ),

          CustomButton(
            backgroundColor: AppColors.primaryColor,
            text: AppText.submit,
            forgroundColor: AppColors.secondaryColor,
            ontap: () {

            },

          )
        ],
      ),
    );
  }
}
