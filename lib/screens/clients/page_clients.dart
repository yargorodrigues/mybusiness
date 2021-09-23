import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_bussiness/screens/clients/add_clients.dart';


class PageClients extends StatefulWidget {
  @override
  _PageClientsState createState() => _PageClientsState();
}

class _PageClientsState extends State<PageClients> {
  final _textAppBar = 'Gerenciar Clientes';
  final _textSearch = TextEditingController();
  DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          _textAppBar,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                _showAddClients(context);
              });
            },
            icon: Icon(
              Icons.person_add,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              alignment: Alignment.topCenter,
              child: Card(
                color: Colors.white,
                child: Container(
                  height: 50,
                  width: double.maxFinite,
                  child: TextField(
                    controller: _textSearch,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          child: Icon(
                            Icons.close,
                            color: Colors.grey[900],
                          ),
                          onTap: () {
                            _textSearch.clear();
                          },
                        ),
                        labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[900],
                          fontWeight: FontWeight.w400,
                        ),
                        labelText: 'Buscar Cliente',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[900],
                          fontWeight: FontWeight.w400,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[900],
                        )),
                    cursorColor: Colors.grey[900],
                    onTap: () {
                      GestureDetector(
                        onTap: () {
                          _textSearch.clear();
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
                child: PaginatedDataTable(
                  source: _data,
                  header: Text(
                    'Clientes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  columns: [
                    DataColumn(label: Text('ID')),
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Price'))
                  ],
                  columnSpacing: 120,
                  horizontalMargin: 10,
                  rowsPerPage: 8,
                ),
                padding: EdgeInsets.symmetric(horizontal: 4)),
          ],
        ),
      )
    );
  }
}

class MyData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> _data = List.generate(
      200,
      (index) => {
            "id": index,
            "title": "Item $index",
            "price": Random().nextInt(10000)
          });

  bool get isRowCountApproximate => false;

  int get rowCount => _data.length;

  int get selectedRowCount => 0;

  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['id'].toString())),
      DataCell(Text(_data[index]["title"])),
      DataCell(Text(_data[index]["price"].toString())),
    ]);
  }
}


void _showAddClients(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => AddClients(),
    ),
  );
}