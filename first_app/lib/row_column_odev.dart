import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.orange, accentColor: Colors.green),
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Dersleri",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),


      // deneme örneği
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.deepOrangeAccent,
                child: Text(
                  "D",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.deepOrangeAccent,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.deepOrangeAccent,
                child: Text(
                  "R",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.deepOrangeAccent,
                child: Text(
                  "T",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.deepOrangeAccent,
            child: Text(
              "E",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.deepOrangeAccent,
            child: Text(
              "R",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.deepOrangeAccent,
            child: Text(
              "S",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.deepOrangeAccent,
            child: Text(
              "L",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.deepOrangeAccent,
            child: Text(
              "E",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.deepOrangeAccent,
            child: Text(
              "R",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(24.75),
            margin: EdgeInsets.all(2),
            color: Colors.deepOrangeAccent,
            child: Text(
              "İ",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    ),
  ));
}
