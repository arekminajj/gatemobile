import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show jsonEncode;

Future<http.Response> changeStatus() {
  return http.post(
    'https://stormy-badlands-80104.herokuapp.com/api/status',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, bool>{
      'IsClosed': true,
      'ShouldBeClosed': false,
    }),
  );
}

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
          changeStatus();
        },
        child: Text(
          "Wyślij sygnał",
          style: TextStyle(fontSize: 45.0),
        ),
      )),
    ),
  ));
}
