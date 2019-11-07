import 'package:flutter/material.dart';
import 'package:gpm_version_4/behaviors/hiddenScrollBehavior.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
              ),
              FlatButton(
                onPressed: (){
                  Navigator.of(context).pushNamed('forgotpassword');
                },
                textColor: Colors.blueGrey,
                child: Text('Olvidé mi Password')
              )
            ],
          ),
          )
        ),
      ),floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.account_circle),

      ),
      persistentFooterButtons: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('No tengo una cuenta'),

        )
      ],
    );
  }
}