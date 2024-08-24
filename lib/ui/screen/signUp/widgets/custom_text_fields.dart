import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/ui/screen/login/widgets/data_in_input_decoration.dart';
import 'package:notes_app_by_mysql_database/utils/constants/color.dart';
import '../../../../utils/constants/all_text_in_app.dart';

class CustomTextFields extends StatelessWidget {
  CustomTextFields({super.key, required this.prefixIcon, required this.textEditingController, required this.hint, required this.focusNode, required this.errorValidatorText, required this.isValidInput});
  final TextEditingController textEditingController;
  final IconData prefixIcon;
  final String hint;
  final FocusNode focusNode;
  TextInputType textInputType = TextInputType.text;
  final String errorValidatorText;
  final bool isValidInput;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 12),
      child: TextFormField(
        focusNode: focusNode,
        controller: textEditingController,
        keyboardType: hint.contains(AppText.emailAddress)?TextInputType.emailAddress:textInputType,
        decoration: InputDecoration(
          fillColor: AppColors.secondaryColor,
          filled: true,
          prefixIcon: DataInInputDecoration.preIcon(prefixIcon),
          hintText: hint,
          hintStyle: DataInInputDecoration.hintStyle(),
          contentPadding: const EdgeInsets.only(left: 10),
          focusedBorder: const OutlineInputBorder(),
          border:  OutlineInputBorder(
            borderSide: BorderSide(color: isValidInput?AppColors.black:AppColors.red)
          ),
          enabledBorder: const OutlineInputBorder()
        ),
        validator: DataInInputDecoration.customValidation(errorValidatorText, textEditingController)
      ),
    );
  }
}
