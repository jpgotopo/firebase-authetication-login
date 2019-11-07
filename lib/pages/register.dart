<<<<<<< HEAD
import 'package:firebase_auth/firebase_auth.dart';
=======
>>>>>>> 0851a16bd1b48b4052383d40fbfd96638278355b
import 'package:flutter/material.dart';
import 'package:gpm_version_4/behaviors/hiddenScrollBehavior.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

<<<<<<< HEAD
  final _formKey = GlobalKey<FormState>();

  String _email;
  String _password;

  bool _isRegistering = false;

  _register() {
    if (_isRegistering) return;
    setState(() {
      _isRegistering = true;
    });

    final form = _formKey.currentState;

    if(!form.validate()) {
      setState(() {
        _isRegistering = false;
      });
      return;
    }

    form.save();

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
      Navigator.of(context).pushReplacementNamed('maintabs')
      
    } catch (e) {
      //TODO 
    }
    


  }

=======
  String _email;
  String _password;

>>>>>>> 0851a16bd1b48b4052383d40fbfd96638278355b
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
<<<<<<< HEAD
            key: _formKey,
=======
>>>>>>> 0851a16bd1b48b4052383d40fbfd96638278355b
            child: ListView(
            children: <Widget>[
              FlutterLogo(style: FlutterLogoStyle.horizontal,
              size: 200.0,
              
              
              ),
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email'),
<<<<<<< HEAD
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
=======
>>>>>>> 0851a16bd1b48b4052383d40fbfd96638278355b

              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
<<<<<<< HEAD
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
                
=======
>>>>>>> 0851a16bd1b48b4052383d40fbfd96638278355b

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