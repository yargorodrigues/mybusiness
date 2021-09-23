import 'package:flutter/material.dart';

class PageRecoveryPassword extends StatefulWidget {
  @override
  _PageRecoveryPasswordState createState() => _PageRecoveryPasswordState();
}

class _PageRecoveryPasswordState extends State<PageRecoveryPassword> {

  final  _recuperarSenha = 'Recuperar Senha';
  final  _textDesejaSenha = 'Deseja recuperar sua senha?';
  final  _textInstrucoes = 'Por favor, insira seu email cadastrado, para enviarmos as intruções e o link para redefinir sua senha!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _recuperarSenha,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          right: 40,
          left: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset(
                "images/recoverypass.png",
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                _textDesejaSenha,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                _textInstrucoes,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            formularioEmailRecovery(),
            SizedBox(
              height: 20,
            ),
            botaoRecoveryPass(),
          ],
        ),
      ),
    );
  }

  Container botaoRecoveryPass() {
    final _nameBotao = 'Enviar';
    return Container(
            height: 40,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      _nameBotao,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.send, color: Colors.grey[900],),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          );
  }

  Padding formularioEmailRecovery() {
    final _text = TextEditingController();
    return Padding(
      child: Center(
        child: TextField(
          controller: _text,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: 15, vertical: 0),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Colors.black,
                  width: 2,
                  style: BorderStyle.solid),
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
      padding: EdgeInsets.all(5),
    );
  }
}
