import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flux_validator_dart/flux_validator_dart.dart';
import 'package:my_bussiness/components/message_Dialog.dart';
import 'package:my_bussiness/screens/dashboard/dashboard.dart';
import 'package:my_bussiness/screens/login_dashboard/recovery_pass.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

final _titleNegocio = 'My Business';
final _credenciais = 'Entre com suas credenciais';

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  final TextEditingController _controllerSenha = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/backgroundlogin.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(
              top: 100,
              left: 32.0,
              right: 32.0,
              bottom: 100,
            ),
            color: Colors.transparent,
            height: double.maxFinite,
            width: double.infinity,
            child: Container(
              height: 400,
              width: 400,
              padding: EdgeInsets.all(8),
              color: Colors.grey[200]!.withOpacity(0.6),
              child: SingleChildScrollView(
                child: _constructForm(),
              ),
            ),
          ),
        ),
        esqueceuSenha(),
      ],
    ));
  }

  Padding formularioSenha() {
    return Padding(
      child: Center(
        child: TextFormField(
          validator: (value) {
            if (value!.isEmpty) return 'Senha Inválida';

            if (value.length > 8) {
              return 'Senha maior que 8 dígitos';
            }
            if (value.length <= 1 && value.length < 8) {
              return 'Senha com menos de 8 dígitos';
            }
          },
          controller: _controllerSenha,
          textInputAction: TextInputAction.done,
          autofocus: true,
          keyboardType: TextInputType.visiblePassword,
          obscureText: _isObscure,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Colors.black, width: 2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(5),
            ),
            labelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.grey[900],
            ),
            labelText: 'Senha',
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.grey[900],
            ),
            suffixIcon: IconButton(
              color: Colors.grey[900],
              icon: Icon(
                _isObscure ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
          ),
          style: TextStyle(
            fontSize: 20,
          ),
          cursorColor: Colors.grey[900],
        ),
      ),
      padding: EdgeInsets.all(10),
    );
  }

  Container botaoLogin() {
    return Container(
      height: 40,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xFF212121),
              Color(0xFF878787),
            ]),
        border: Border.all(width: 1, color: Colors.black),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: SizedBox.expand(
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Acessar o Sistema ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.login,
                size: 24.0,
                color: Colors.white,
              ),
            ],
          ),
          onPressed: () {
            _showDashboard();
          },
        ),
      ),
    );
  }

  Container esqueceuSenha() {
    return Container(
      padding: EdgeInsets.only(top: 700),
      alignment: Alignment.bottomCenter,
      child: TextButton(
        child: Text(
          'Recuperar Senha',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
        onPressed: () {
          _showPageRecoveryPassword();
        },
      ),
    );
  }

  Padding formularioEmail() {
    return Padding(
      child: Center(
        child: TextFormField(
          validator: (value) => Validator.email(value) ? 'Email inválido' : null,
          controller: _controllerEmail,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Colors.black, width: 2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(5),
            ),
            labelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.grey[900],
            ),
            labelText: 'Email',
            prefixIcon: Icon(
              Icons.email,
              color: Colors.grey[900],
            ),
          ),
          style: TextStyle(
            fontSize: 20,
          ),
          cursorColor: Colors.grey[900],
        ),
      ),
      padding: EdgeInsets.all(10),
    );
  }

  Widget _constructForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 180,
            height: 180,
            child: Image.asset("images/logo_transparent.png"),
          ),
          Container(
            child: Text(
              'Bem vindo ao $_titleNegocio',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            child: Text(
              _credenciais,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          formularioEmail(),
          SizedBox(
            height: 10,
          ),
          formularioSenha(),
          SizedBox(
            height: 30,
          ),
          botaoLogin(),
        ],
      ),
    );
  }

  void _showPageRecoveryPassword() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PageRecoveryPassword(),
      ),
    );
  }

  void _showDashboard() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => Dashboard(),
          ),
              (route) => false);
      } else {
        exibirMessageAlert(
            context: context,
            titulo: 'ATENÇÃO',
            content: 'Email ou senha inválido',
            bottonText: 'Fechar');
      }
    }
  }

