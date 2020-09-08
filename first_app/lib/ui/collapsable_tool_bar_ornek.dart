import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CollasableToolBarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.green,
          expandedHeight: 400,
          //sayfada aşağıya ineken toolbar kayboluyor yavaş yavaş. false iken tollbar en üste
          // çıkmadığın takdirde gözümüyor. true iken ise en ufa yukarı hareketinizde yavaş yavaş
          // belirginleşiyor ve kendisini gösteriyor
          floating: false,
          //aşağı sürüklendiğinde uygulama, toolbar yuarıda küçülür ve askıda kalır.
          pinned: true,
          //floating eğer true ise uygulamayı yukarı scroll yaparken appbar direkt düşüyor
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver AppBar"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/cat.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),

        //sabit elemanlarla bir satırda kaç eleman olacağını söylediğimiz grid türü
        SliverPadding(
          padding: EdgeInsets.all(6),
          sliver: SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
          ),
        ),

        //dinamik (builder ile üretilen) elemanlarla bir satırda kaç eleman olacağını söylediğimiz grid türü
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          delegate: SliverChildBuilderDelegate(
              _dinamikElemanlariUretenFonksiyon,
              childCount: 6),
        ),

        //dinamik (builder ile üretilen) elemanlarla bir satırdaki bir elemanın max genişliğini söylediğimiz grid türü
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
          delegate: SliverChildBuilderDelegate(
              _dinamikElemanlariUretenFonksiyon,
              childCount: 6),
        ),
        SliverPadding(
          padding: EdgeInsets.all(3),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              sabitListeElemanlari(),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(5),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                _dinamikElemanlariUretenFonksiyon,
                childCount: 6),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(8),
          sliver: SliverFixedExtentList(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
            itemExtent: 250,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
                _dinamikElemanlariUretenFonksiyon,
                childCount: 6),
            itemExtent: 50,
          ),
        ),
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 100,
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanları 1",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.red,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanları 2",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.white30,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanları 3",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanları 4",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.grey,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanları 5",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanları 6",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget _dinamikElemanlariUretenFonksiyon(BuildContext context, int index) {
    return Container(
        height: 100,
        color: rastgelerenkUret(),
        alignment: Alignment.center,
        child: Text(
          "Dinamik Liste Elemanları ${index + 1}",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ));
  }

  Color rastgelerenkUret() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
