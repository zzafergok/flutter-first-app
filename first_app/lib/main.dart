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
      body: Column(
        children: <Widget>[
          Text(
            "Resim ve Buton Türleri",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset("assets/images/cat.jpg", width: 75, height: 75),
                    Text("Zafer"),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Zafer"),
                    Text("Zafer"),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Zafer"),
                    Text("Zafer"),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Zafer"),
                    Text("Zafer"),
                  ],
                ),
                margin: EdgeInsets.only(top:15),

              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Zafer"),
                    Text("Zafer"),
                  ],
                ),
                margin: EdgeInsets.only(top:15),

              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Zafer"),
                    Text("Zafer"),
                  ],
                ),
                margin: EdgeInsets.only(top:15),
              ),
            ],
          )
        ],
      )
    ),
  ));
}
