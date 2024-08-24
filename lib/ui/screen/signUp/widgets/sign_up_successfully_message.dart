import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';

class SignupSuccessMessage {
  static Widget flushBar(BuildContext context,{required String message, Color backgroundColor = AppColors.green}){
    return Flushbar(
      message: message,
      duration: const Duration(seconds: 1),
      margin: const EdgeInsets.all(30),
      borderRadius: BorderRadius.circular(12),
      backgroundColor: backgroundColor,
      boxShadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 10,
        ),
      ],
      positionOffset: 20,
      flushbarPosition: FlushbarPosition.BOTTOM,
    )..show(context);

  }
}