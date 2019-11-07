import 'package:flutter/material.dart';
import 'package:gpm_version_4/behaviors/hiddenScrollBehavior.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _formKey = GlobalKey<FormState>();

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
            key: _formKey,
            child: ListView(
            children: <Widget>[
              FlutterLogo(style: FlutterLogoStyle.horizontal,
              size: 200.0,
              
              
              ),
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (val) {
                  if (val.isEmpty) {

                    return 'Por favor, introduzca e-mail válido';
                  }else {
                    return null;
                  }
                },
                onSaved: (val){
                  setState(() {
                    _email = val;
                  });
                },

              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
                validator: (val) {
                  if (val.isEmpty) {

                    return 'Por favor, introduzca password válido';
                  }else {
                    return null;
                  }
                },
                onSaved: (val){
                  setState(() {
                    _password = val;
                  });
                },
                

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