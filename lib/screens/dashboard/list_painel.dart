import 'package:flutter/material.dart';
import 'package:my_bussiness/screens/clients/page_clients.dart';

class ListPanel extends StatefulWidget {
  const ListPanel({Key? key}) : super(key: key);

  @override
  _ListPanelState createState() => _ListPanelState();
}

class _ListPanelState extends State<ListPanel> {
  final _textAppBar = 'Menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _textAppBar,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[900],
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.grey[900],
                child: Column(
                    children: <Widget>[
                      clientes(),
                      produtos(),
                      servicos(),
                      vendas(),
                      estoque(),
                      relatorios(),
                      SizedBox.fromSize(),
                      ajuda(),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Container ajuda() {
    final _textContainer = 'Ajuda';
    return Container(
                    height: 50,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        bottom: BorderSide(width: 4.0, color: Colors.grey),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: Container(
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                _textContainer,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(Icons.help_outline, size: 25, color: Colors.white,),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  );
  }

  Container relatorios() {
    final _textContainer = 'Relatórios';
    return Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        bottom: BorderSide(width: 4.0, color: Colors.grey),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: Container(
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                _textContainer,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(Icons.receipt_long_outlined, size: 25, color: Colors.white,),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  );
  }

  Container estoque() {
    final _textContainer = 'Estoque';
    return Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        bottom: BorderSide(width: 4.0, color: Colors.grey),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: Container(
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                _textContainer,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(Icons.inventory_2_outlined, size: 25, color: Colors.white,),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  );
  }

  Container vendas() {
    final _textContainer = 'Vendas';
    return Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        bottom: BorderSide(width: 4.0, color: Colors.grey),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: Container(
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                            _textContainer,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(Icons.sell_outlined, size: 25, color: Colors.white,),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  );
  }

  Container servicos() {
    final _textContainer = 'Serviços';
    return Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        bottom: BorderSide(width: 4.0, color: Colors.grey),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: Container(
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                _textContainer,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(Icons.home_repair_service_outlined, size: 25, color: Colors.white,),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  );
  }

  Container produtos() {
    final _textContainer = 'Produtos';
    return Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        bottom: BorderSide(width: 4.0, color: Colors.grey),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: Container(
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                _textContainer,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(Icons.shopping_bag_outlined, size: 25, color: Colors.white,),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  );
  }

  Container clientes() {
    final _textContainer = 'Clientes';
    return Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        bottom: BorderSide(width: 4.0, color: Colors.grey),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: Container(
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                _textContainer,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(Icons.people_alt_outlined, size: 25, color: Colors.white,),
                            ],
                          ),
                          onPressed: () {
                            setState(() {
                              _showPageClients(context);
                            });
                          },
                        ),
                      ),
                    ),
                  );
  }
}

void _showPageClients(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => PageClients(),
    ),
  );
}