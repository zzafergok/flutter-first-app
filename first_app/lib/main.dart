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
      body: Container(
          color: Colors.brown,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Icon(Icons.ac_unit, size: 24),
            Icon(Icons.accessibility, size: 24),
            Icon(Icons.accessible, size: 24),
            Icon(Icons.ac_unit, size: 24),
            Icon(Icons.accessibility, size: 24),
            Icon(Icons.ac_unit, size: 24),
            Icon(Icons.accessibility, size: 24)
          ],
        ),
        ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ),
  ));
}
