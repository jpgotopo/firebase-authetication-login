import 'package:flutter/material.dart';

class TodosAchivePage extends StatefulWidget {
  @override
  _TodosAchivePageState createState() => _TodosAchivePageState();
}

class _TodosAchivePageState extends State<TodosAchivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Archive'),),
      body: Center(
        child: Text('Seré una pagina para Archive'),
      ),
    );
  }
}