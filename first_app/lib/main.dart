import 'package:flutter/material.dart';
import 'ui/liste_dersleri.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Öğreniyorum",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: Scaffold(
      appBar: AppBar(
        title:
        Text("Liste Dersleri",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: ListeDersleri(),
    ),
  ));
}
