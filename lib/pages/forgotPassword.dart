import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gpm_version_4/behaviors/hiddenScrollBehavior.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  String _email;

  bool _isSendingForgotPassword = false;

  _forgotPassword() async {
    if (_isSendingForgotPassword) return;
    setState(() {
      _isSendingForgotPassword = true;
    });
    final form = _formKey.currentState;

    if(!form.validate()) {
      _scaffoldKey.currentState.hideCurrentSnackBar();
      setState(() {
        _isSendingForgotPassword = false;
      });
      return;
    }

    form.save();

    try {
      await FirebaseAuth.instance
        .sendPasswordResetEmail(email: _email);
      _scaffoldKey.currentState.hideCurrentSnackBar();
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text('Password Reseteado, Por favor revise su correo'),
        duration: Duration(seconds: 10),
      ));
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
       _isSendingForgotPassword = false;
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
                FlutterLogo(style: FlutterLogoStyle.markOnly, size: 100.0,),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text('Por favor, introduce tu correo electrónico para enviarte el enlace de recuperación de contraseña'),

                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
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
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'forgot',
        onPressed: () {
          _forgotPassword();
        },
        child: Icon(Icons.restore),
      ),
    
    );
  }
}