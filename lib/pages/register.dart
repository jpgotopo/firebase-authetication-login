import 'package:flutter/material.dart';
import 'package:gpm_version_4/behaviors/hiddenScrollBehavior.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  String _email;
  String _password;

  bool _isRegistering = false;

  _register() async {
    if (_isRegistering) return;
    setState(() {
      _isRegistering = true;
    });
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Registrando Usuario'),));
    final form = _formKey.currentState;

    if(!form.validate()) {
      _scaffoldKey.currentState.hideCurrentSnackBar();
      setState(() {
        _isRegistering = false;
      });
      return;
    }

    form.save();

    try {
      await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: _email, password: _password);
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
       _isRegistering = false;
      });
    }



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.green[500],
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
              Image.asset('logo_gpm.png', width: 120.0, height: 120.0,),
              TextFormField(
                style: TextStyle(color: Colors.blueAccent),
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.blue,
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
              )
            ],
          ),
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'register',
        backgroundColor: Color(0xFF296690),
        onPressed: () {
          _register();
        },
        child: Icon(Icons.person_add),

      ),
      persistentFooterButtons: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/login');
          },
          child: Text('Tengo una cuenta', style: TextStyle(color: Colors.orange),),

        )
      ],
    );
  }
}