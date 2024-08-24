import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/routes.dart';

Future customNavigation(BuildContext _) {
  return Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushReplacementNamed(_, Routes.welcome.toString());
  });
}