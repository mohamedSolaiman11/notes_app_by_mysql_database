import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/utils/constants/color.dart';
import 'package:notes_app_by_mysql_database/utils/constants/custom_text_size.dart';

class CustomText {


  // Regular Text
  static Widget regularText(String text, {double size = CustomTextSize.regularSize14, Color color = Colors.black,FontWeight fontWeight = FontWeight.normal}) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'FugazOne',

          fontSize: size,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }

  // Medium Text
  static Text mediumText(String text, {double size = CustomTextSize.mediumSize14, Color color = Colors.black,FontWeight fontWeight = FontWeight.w500,TextDecoration textDecoration = TextDecoration.none}) {
    return Text(
      text,
      style: TextStyle(
        decoration: textDecoration,
        decorationColor: AppColors.primaryColor,
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  // Light Text
  static Text lightText(String text, {double size = CustomTextSize.lightSize20, Color color = Colors.black}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w400,
        color: color,
      ),
    );
  }

  // Mixed Text
  static Text mixedText(String text, {double size = CustomTextSize.mixedSize18, Color color = Colors.black,FontWeight fontWeight = FontWeight.normal}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  // WidgetText Wrap
  static Widget customText({
    required String text,
    double size = CustomTextSize.regularSize14,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
    TextAlign textAlign = TextAlign.left,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
