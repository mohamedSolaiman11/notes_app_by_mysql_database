import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/custom_text_size.dart';
import '../bloc/login_cubit.dart';

class DataInInputDecoration {
  static Widget preIcon(IconData icon) {
    return Icon(icon, color: AppColors.primaryColor,);
  }

  static Widget suffixIcon(BuildContext context,void Function()? ontap) {
    return InkWell(
        onTap: ontap,
        child: context
            .watch<LoginCubit>()
            .isPasswordVisible ?
        const Icon(Icons.visibility_off) :
        const Icon(Icons.visibility, color: AppColors.black,)
    );
  }
  static Widget confirmSuffixIcon(BuildContext context,void Function()? ontap) {
    return InkWell(
        onTap: ontap,
        child: context
            .watch<LoginCubit>()
            .isConfirmPasswordVisible ?
        const Icon(Icons.visibility_off) :
        const Icon(Icons.visibility, color: AppColors.black,)
    );
  }

  static TextStyle hintStyle() {
    return const TextStyle(
        fontSize: CustomTextSize.regularSize16, fontWeight: FontWeight.w300);
  }

  // static String? Function(String?)? customValidation(String? error,
  //     TextEditingController controller) {
  //
  //   String value = controller.text;
  //   if(value.isEmpty){
  //     return customValidation(error, controller);
  //   }
  //   return null;
  //
  // }
  static String? Function(String?)? customValidation(String? error,TextEditingController controller) {
    return (String? value) {
      value = controller.text;
      if (value.isEmpty) {
        return error;
      }
      return null;
    };
  }



}





