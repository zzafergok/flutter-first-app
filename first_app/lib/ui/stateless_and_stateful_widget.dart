import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          display2: TextStyle(fontSize: 20),
        ),
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
    //debugPrint("MyHomePage Stateful Widget constuctor");
  }

  @override
  State<StatefulWidget> createState() {
    //debugPrint("MyHomePage Stateful State Widget constuctor");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  MyHomePageState() {
    //debugPrint("MyHomePageState State Widget constuctor");
  }

  @override
  Widget build(BuildContext context) {
    //debugPrint("MyHomePageState Build Widget constuctor");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        /** onPressed: () {
            setState(() {
            _sayacDegeriniArtir();
            });
            },
         */
        child: Icon(Icons.add_shopping_cart),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Artır"),
              color: Colors.deepOrange,
              onPressed: () {
                setState(() {
                  _sayacDegeriniArtir();
                });
              },
            ),
            Text(
              "${widget.sayac}",
              //style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              style: Theme.of(context).textTheme.display4.copyWith(
                  color: widget.sayac <= 0 ? Colors.brown : Colors.blueAccent),
            ),
            RaisedButton(
              child: Text("Azalt"),
              color: Colors.deepPurple,
              onPressed: () {
                setState(() {
                  _sayacDegeriniAzalt();
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  void _sayacDegeriniArtir() {
    widget.sayac++;
    //debugPrint("Sayac Değeri :  ${widget.sayac}");
  }

  void _sayacDegeriniAzalt() {
    widget.sayac--;
    //debugPrint("Sayac Değeri :  ${widget.sayac}");
  }
}
