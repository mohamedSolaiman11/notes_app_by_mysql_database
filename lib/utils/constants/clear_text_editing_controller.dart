import 'package:flutter/material.dart';
class ClearTextEditingController{

  static void clear(
      TextEditingController? controller1,
      TextEditingController? controller2 ,
      TextEditingController controller3,
      TextEditingController controller4
      ){
    controller1?.clear();
    controller2?.clear();
    controller3.clear();
    controller4.clear();

  }

}