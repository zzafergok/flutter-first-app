import 'package:flutter/material.dart';
import 'ui/etkin_liste_ornek.dart';

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
      body: EtkinListeOrnek(),
    ),
  ));
}
