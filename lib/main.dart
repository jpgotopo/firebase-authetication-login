import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gpm_version_4/src/models/obreros_model.dart';
import 'package:gpm_version_4/services/worker_services.dart';
import 'package:gpm_version_4/pages/mainTabs.dart';
import 'dart:async';
import 'package:gpm_version_4/pages/register.dart';
import 'package:gpm_version_4/routes.dart';
import 'package:gpm_version_4/theme.dart';

void main() {
  runApp(new TodoApp());
  }

class TodoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {

  Widget _rootPage = RegisterPage();

  Future<Widget> getRootPage() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    if (user != null) {
      return MainTabsPage();
    } else {
      return RegisterPage();
    }
  }

  
  @override
  initState() { 
    super.initState();
    getRootPage().then((Widget page){
      setState(() {
        _rootPage = page;
      });
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _rootPage,
      routes: buildAppRoutes(),
      theme: buildAppTheme(),
      
    );
  }
}