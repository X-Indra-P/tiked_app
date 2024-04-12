import 'package:app_tiked/screens/Login/loginscreens.dart';
import 'package:app_tiked/screens/Register/register.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreens.routeName: (context) => LoginScreens(),
  RegisterScreen.routeName:(context) => RegisterScreen()
};