import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_bussiness/components/myBusinessTheme.dart';
import 'package:my_bussiness/screens/clients/add_clients.dart';
import 'package:my_bussiness/screens/dashboard/list_painel.dart';
import 'package:my_bussiness/screens/login_dashboard/login_dashboard.dart';


void main() => runApp(MyBusiness());

class MyBusiness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myBusinessTheme,
      home: ListPanel(),
    );
  }
}
