import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Brama'),
        centerTitle: true,
      ),
      body: Center(
          child: FlatButton(
        color: Colors.blue,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: () {
          /*...*/
        },
        child: Text(
          "Wyślij sygnał",
          style: TextStyle(fontSize: 20.0),
        ),
      )),
    ),
  ));
}
