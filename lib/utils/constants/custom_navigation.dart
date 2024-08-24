import 'package:flutter/material.dart';

class CustomNavigation{
  static push(BuildContext _,Widget widget){
     Navigator.push(_, MaterialPageRoute(builder: (_){
      return widget;
    }));
  }
  static pushReplacementNamed(BuildContext _,Widget widget,String route){
    return Navigator.pushReplacementNamed(_,route);
  }

  static pushReplacement(BuildContext _,Widget widget){
    Navigator.pushReplacement(_,MaterialPageRoute(builder: (_){
      return widget;
    }));
  }


}