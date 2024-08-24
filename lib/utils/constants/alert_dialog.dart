import 'package:flutter/material.dart';
import 'package:notes_app_by_mysql_database/utils/constants/color.dart';
class ShowAlertDialog {
  static void showCustomModalBottomSheet(BuildContext context, {required String message}) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        Future.delayed(const Duration(seconds: 3), () {
          Navigator.pop(context);
        });
        return AnimatedPadding(
          duration: const Duration(milliseconds: 1500),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.22,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Icon(Icons.warning_rounded, color: AppColors.red, size: 50),
                const SizedBox(height: 10),
                Text(
                  message,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }


}
