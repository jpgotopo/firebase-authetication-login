import 'package:flutter/material.dart';
import 'package:gpm_version_4/pages/register.dart';
import 'package:gpm_version_4/routes.dart';
import 'package:gpm_version_4/theme.dart';

void main() => runApp(new TodoApp());

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {

  Widget rootPage = RegisterPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: rootPage,
      routes: buildAppRoutes(),
      theme: buildAppTheme(),
      
    );
  }
}