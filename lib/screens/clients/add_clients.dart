import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flux_validator_dart/flux_validator_dart.dart';

class AddClients extends StatefulWidget {
  const AddClients({Key? key}) : super(key: key);

  @override
  _AddClientsState createState() => _AddClientsState();
}

class _AddClientsState extends State<AddClients> {
  final _textAddClientsBar = 'Cadastrar Cliente';
  final _formAddClients = GlobalKey<FormState>();

  // Dados Pessoais
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerCpf = TextEditingController();
  final TextEditingController _controllerRg = TextEditingController();
  final TextEditingController _controllerDataNas = TextEditingController();
  final TextEditingController _controllerCelular = TextEditingController();
  final TextEditingController _controllerWhats = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();

  // Mask
  final maskFormatterDataNas = new MaskTextInputFormatter(mask: '##/##/####');
  final maskFormatterCelular =
      new MaskTextInputFormatter(mask: '(##) #####-####)');
  final maskFormatterWhats =
      new MaskTextInputFormatter(mask: '(##) #####-####)');

  // Endereço
  final TextEditingController _controllerZipCode = TextEditingController();
  final TextEditingController _controllerEndereco = TextEditingController();
  final TextEditingController _controllerNumero = TextEditingController();
  final TextEditingController _controllerComplemento = TextEditingController();
  final TextEditingController _controllerCidade = TextEditingController();
  final TextEditingController _controllerEstado = TextEditingController();
  final TextEditingController _controllerBairro = TextEditingController();

  // Obsevação
  final TextEditingController _controllerStatus = TextEditingController();
  final TextEditingController _controllerObservacao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(_textAddClientsBar),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
            child: Form(
          key: _formAddClients,
          child: Column(
            children: <Widget>[
              // Dados Pessoais
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Dados Pessoais',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.length < 3) return 'Nome inválido!';

                  if (!value.contains(" "))
                    return 'Informe pelo menos um sobrenome!';

                  return null;
                },
                controller: _controllerName,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                  labelText: 'Nome Completo',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey[900],
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                cursorColor: Colors.grey[900],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (Validator.email(value)) return 'Email inválido.';
                  return null;
                },
                controller: _controllerEmail,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (Validator.cpf(value)) return 'CPF inválido.';
                  return null;
                },
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CpfInputFormatter(),
                ],
                controller: _controllerCpf,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                  labelText: 'CPF',
                  prefixIcon: Icon(
                    Icons.pin,
                    color: Colors.grey[900],
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                cursorColor: Colors.grey[900],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.length < 4) return 'RG inválido.';
                  return null;
                },
                controller: _controllerRg,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                  labelText: 'RG',
                  prefixIcon: Icon(
                    Icons.pin,
                    color: Colors.grey[900],
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                cursorColor: Colors.grey[900],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (Validator.date(value))
                    return 'Data de nascimento inválida.';
                  return null;
                },
                inputFormatters: [maskFormatterDataNas],
                controller: _controllerDataNas,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                  labelText: 'Data de Nascimento',
                  prefixIcon: Icon(
                    Icons.calendar_today,
                    color: Colors.grey[900],
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                cursorColor: Colors.grey[900],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) =>
                    Validator.phone(value) ? 'Celular inválido' : null,
                inputFormatters: [maskFormatterCelular],
                controller: _controllerCelular,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                  labelText: 'Celular',
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.grey[900],
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                cursorColor: Colors.grey[900],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) =>
                    Validator.phone(value) ? 'WhatsApp inválido' : null,
                inputFormatters: [maskFormatterWhats],
                controller: _controllerWhats,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                  labelText: 'WhatsApp',
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.grey[900],
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                cursorColor: Colors.grey[900],
              ),
              SizedBox(
                height: 15,
              ),
              // Endereço
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Endereço',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ), //
              TextFormField(
                validator: (value) =>
                    Validator.cep(value) ? 'CEP inválido' : null,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CepInputFormatter(),
                ],
                controller: _controllerZipCode,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                  labelText: 'CEP',
                  prefixIcon: Icon(
                    Icons.domain,
                    color: Colors.grey[900],
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                cursorColor: Colors.grey[900],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    width: 270,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty)
                          return 'Insira uma cidade';
                      },
                      controller: _controllerCidade,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[900],
                        ),
                        labelText: 'Cidade',
                        prefixIcon: Icon(
                          Icons.location_city,
                          color: Colors.grey[900],
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      cursorColor: Colors.grey[900],
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty)
                          return 'Estado';
                      },
                      controller: _controllerEstado,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[900],
                        ),
                        labelText: 'UF',
                      ),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      cursorColor: Colors.grey[900],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.length < 3) return 'Endereço inválido!';

                  if (!value.contains(" "))
                    return 'Informe pelo menos um sobrenome!';

                  return null;
                },
                controller: _controllerEndereco,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                  labelText: 'Endereço',
                  prefixIcon: Icon(
                    Icons.home,
                    color: Colors.grey[900],
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                cursorColor: Colors.grey[900],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                    return 'Insira uma bairro';
                },
                controller: _controllerBairro,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                  labelText: 'Bairro',
                  prefixIcon: Icon(
                    Icons.villa,
                    color: Colors.grey[900],
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                cursorColor: Colors.grey[900],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    width: 80,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty)
                          return 'Número';
                      },
                      controller: _controllerNumero,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[900],
                        ),
                        labelText: 'Número',
                      ),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      cursorColor: Colors.grey[900],
                    ),
                  ),
                  SizedBox(
                    width: 270,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty)
                          return 'Insira uma complemento';
                      },
                      controller: _controllerComplemento,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[900],
                        ),
                        labelText: 'Complemento',
                        prefixIcon: Icon(
                          Icons.home,
                          color: Colors.grey[900],
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      cursorColor: Colors.grey[900],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Observação',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                minLines: 1,
                maxLines: 5,
                textAlign: TextAlign.justify,
                textDirection: TextDirection.ltr,
                controller: _controllerObservacao,
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                  labelText: 'Observação',
                  prefixIcon: Icon(
                    Icons.text_fields,
                    color: Colors.grey[900],
                  ),
                ),
                style: TextStyle(
                  fontSize: 18,
                ),
                cursorColor: Colors.grey[900],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
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
                          'Cadastrar Cliente ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.app_registration,
                          size: 24.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onPressed: () {
                      if (_formAddClients.currentState!.validate()) {}
                    },
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
