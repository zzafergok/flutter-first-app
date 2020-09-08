import 'package:flutter/material.dart';
import 'dart:math';

class CollasableToolBarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.green,
          expandedHeight: 200,
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
        SliverList(
          delegate: SliverChildListDelegate(
            sabitListeElemanlari(),
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
}
