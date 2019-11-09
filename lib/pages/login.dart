import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gpm_version_4/behaviors/hiddenScrollBehavior.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  String _email;
  String _password;

  bool _isLoggingIn = false;

  _login() async {
    if (_isLoggingIn) return;
    setState(() {
      _isLoggingIn = true;
    });
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Logueándose'),));
    final form = _formKey.currentState;

    if(!form.validate()) {
      _scaffoldKey.currentState.hideCurrentSnackBar();
      setState(() {
        _isLoggingIn = false;
      });
      return;
    }

    form.save();

    try {
      await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: _email, password: _password);
      Navigator.of(context).pop();
      Navigator.of(context).pushReplacementNamed('/maintabs');
      
    } catch (e) {
      _scaffoldKey.currentState.hideCurrentSnackBar();
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(e.message),
        duration: Duration(seconds: 10),
        action: SnackBarAction(
          label: 'Descartar',
          onPressed: (){
            _scaffoldKey.currentState.hideCurrentSnackBar();

          },
        ),
      ));

    }finally {
      setState(() {
       _isLoggingIn = false;
      });
    }



  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Login'),
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
                      if(val.isEmpty){
                        return "Por favor ingresa un email valido";
                      }else{
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
        onPressed: (){
          _login();
        },
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