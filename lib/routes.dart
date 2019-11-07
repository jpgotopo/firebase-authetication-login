import 'package:flutter/material.dart';
import 'package:gpm_version_4/pages/login.dart';
import 'package:gpm_version_4/pages/register%20copy.dart';
import 'package:gpm_version_4/pages/register.dart';

Map<String,WidgetBuilder> buildAppRoutes(){
  return{
    '/login': (BuildContext context) => new LoginPage(),
    '/register': (BuildContext context) => new RegisterPage(),
    '/forgotpassword': (BuildContext context) => new ForgotPasswordPage()
    

  };
}