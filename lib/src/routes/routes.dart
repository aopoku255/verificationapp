import 'package:flutter/cupertino.dart';
import 'package:selfiemobileapp/src/screens/dashboard.dart';
import 'package:selfiemobileapp/src/screens/home.dart';
import 'package:selfiemobileapp/src/screens/userinfo.dart';

Map<String, WidgetBuilder> get routes {
  return {
    '/': (context) => const Home(),
    '/dashboard': (context) => const Dashboard(),
    '/user-info': (context) => const UserInfo()
  };
}
