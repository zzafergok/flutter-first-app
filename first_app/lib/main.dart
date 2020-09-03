import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.orange, accentColor: Colors.green),
    home: new Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Dersleri",
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB tıklandı");
        },
        child: Icon(
          Icons.bookmark_border,
          size: 24.0,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.brown,
          child: Text(" Flutter en iyisi ", style: TextStyle(fontSize: 18.0)),
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ),
  ));
}
