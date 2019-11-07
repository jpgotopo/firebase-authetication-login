import 'package:flutter/material.dart';
import 'package:gpm_version_4/behaviors/hiddenScrollBehavior.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ScrollConfiguration(
          behavior: HiddenScrollBehavior(),
          child: Form(
            child: ListView(
            children: <Widget>[
              FlutterLogo(style: FlutterLogoStyle.horizontal,
              size: 200.0,
              
              
              ),
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email'),

              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),

              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text('Bienvenidos a GPM Tracking', style: TextStyle(color: Color.fromARGB(255, 200, 200, 200))),
              )
            ],
          ),
          )
        ),
      ),floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.person_add),

      ),
      persistentFooterButtons: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/login');
          },
          child: Text('Tengo una cuenta'),

        )
      ],
    );
  }
}