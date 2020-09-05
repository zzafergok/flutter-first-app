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
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.network('https://picsum.photos/250?image=9'),
                        Text("Merhaba"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/images/cat.jpg"),
                        Text("Merhaba"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png'),
                          backgroundColor: Colors.yellow.shade400,
                          radius: 50,
                          foregroundColor: Colors.green,
                        ),
                        Text("Merhaba"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                color: Colors.red.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset("assets/images/cat.jpg", height: 75),
                    Text("Merhaba"),
                  ],
                ),
                margin: EdgeInsets.only(top:15),

              ),
              Container(
                color: Colors.red.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset("assets/images/cat.jpg", height: 75),
                    Text("Merhaba"),
                  ],
                ),
                margin: EdgeInsets.only(top:15),

              ),
              Container(
                color: Colors.red.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset("assets/images/cat.jpg", height: 75),
                    Text("Merhaba"),
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
