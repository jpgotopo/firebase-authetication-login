import 'package:flutter/material.dart';
import 'package:gpm_version_4/pages/forgotPassword.dart';
import 'package:gpm_version_4/pages/login.dart';
import 'package:gpm_version_4/pages/mainTabs.dart';

import 'package:gpm_version_4/pages/register.dart';

Map<String,WidgetBuilder> buildAppRoutes(){
  return{
    '/login'          : (BuildContext context) => LoginPage(),
    '/register'       : (BuildContext context) => RegisterPage(),
    '/forgotpassword' : (BuildContext context) => ForgotPasswordPage(),
    '/maintabs'       : (BuildContext context) => MainTabsPage()

  };
}