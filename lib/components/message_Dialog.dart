import 'package:flutter/material.dart';

exibirMessageAlert({context, titulo, content, bottonText}) {

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          titulo,
          textAlign: TextAlign.center,
        ),
        titleTextStyle: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        content: Text(
          content,
          textAlign: TextAlign.center,
        ),
        contentTextStyle: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 15,
        ),
        actions: [
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black54)),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              bottonText,
              textAlign: TextAlign.end,
            ),
          )
        ],
      );
    },
  );
}
