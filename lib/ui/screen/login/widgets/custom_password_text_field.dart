import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';
import 'data_in_input_decoration.dart';

class CustomPasswordTextFieldLogin extends StatelessWidget {
  const CustomPasswordTextFieldLogin({super.key,
    required this.focusNode,
    required this.controller,
    required this.hint,

    required this.errorValidationText, required this.customSuffixIcon, required this.obscure});

  final FocusNode focusNode;
  final TextEditingController controller;
  final String hint;
  final String errorValidationText;
  final Widget customSuffixIcon;
  final bool obscure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 12),
      child: TextFormField(
        obscureText: obscure,
        focusNode: focusNode,
        controller: controller,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            fillColor: AppColors.secondaryColor,
            filled: true,
            prefixIcon: DataInInputDecoration.preIcon(Icons.lock_outline),
            suffixIcon: customSuffixIcon,
            hintText: hint,
            hintStyle: DataInInputDecoration.hintStyle(),
            contentPadding: const EdgeInsets.only(left: 10),
            focusedBorder: const OutlineInputBorder(),
            border:  const OutlineInputBorder(),
            enabledBorder: const OutlineInputBorder()
        ),
        validator: DataInInputDecoration.customValidation(errorValidationText,controller)
      ),
    );
  }


}
