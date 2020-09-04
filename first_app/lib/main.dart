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
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //spaceEvenly => her child'ın arası eşit miktarsa aralık. Aynı zamanda başlangıç ve bitiş boşluklarıda eşit.
          //spaceBetween => başlangıç ve bitiş noktalarını ekrana sıfırlar child'lar arası boşluğu eşitler.
          //spaceAround => başlangıç ve bitiş noktalarının boşluk size'ı neyse child'lar arası boşluk 2 katı olacak şekilde ayarlar.
          children: <Widget>[
            Expanded(
              child: Container(
                child: Icon(Icons.ac_unit, size: 36, color: Colors.white),
                color: Colors.red.shade200,
              ),
              flex: 2,
            ),
            Expanded(
              //Expanded verildiğinde ilgili child'ın boyutunu flex ile ayarlayabilmek için kullanılır.
              child: Container(
                child: Icon(Icons.ac_unit, size: 36, color: Colors.white),
                color: Colors.blue.shade200,
              ),
              flex: 5,
            ),
            Expanded(
              child: Container(
                child: Icon(Icons.ac_unit, size: 36, color: Colors.white),
                color: Colors.green.shade200,
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                child: Icon(Icons.ac_unit, size: 36, color: Colors.white),
                color: Colors.orange.shade200,
              ),
              flex: 5,
            ),
            Expanded(
              child: Container(
                child: Icon(Icons.ac_unit, size: 36, color: Colors.white),
                color: Colors.yellow.shade200,
              ),
              flex: 5,
            ),
          ],
        ),
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ),
  ));
}
