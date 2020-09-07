import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: "MaterialApp Title",
      home: MyHomePage(
        title: "My Home Page",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;

  MyHomePage({this.title}) {
    debugPrint("MyHomePage Stateful Widget constuctor");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("MyHomePage Stateful State Widget constuctor");
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  MyHomePageState() {
    debugPrint("MyHomePageState State Widget constuctor");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePageState Build Widget constuctor");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sayacDegeriniArtir();
          });
        },
        child: Icon(Icons.announcement),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Butona Basma Sayısı  :"),
            Text(
              "${widget.sayac}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void sayacDegeriniArtir() {
    widget.sayac++;
    debugPrint("Sayac Değeri :  ${widget.sayac}");
  }
}
