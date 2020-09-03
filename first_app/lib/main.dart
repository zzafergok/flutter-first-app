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
          alignment: Alignment.center,
          color: Colors.brown,
          child: Text(
              " Flutter en iyisi Flutter en iyisi Flutter en iyisi Flutter en iyisi  ",
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
          ),
          //constraints: BoxConstraints.expand(height: 400, width: 400),
        //margin: EdgeInsets.only(top: 3, left: 2, right: 2, bottom: 3),
        margin: EdgeInsets.symmetric(horizontal: 4, vertical: 30),
        padding: EdgeInsets.all(50),
        ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ),
  ));
}
