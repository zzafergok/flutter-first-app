import 'package:flutter/material.dart';
import 'dart:math';

class CollasableToolBarOrnek extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Sliver AppBar"),
          backgroundColor: Colors.green,
          expandedHeight: 200,
          floating: true,
        ),
        //SliverList(),
        //SliverFixedExtentList(),
        //SliverGrid(),
        //elemanlar arası boşlukları yönetiyorsun
        SliverGrid.extent(maxCrossAxisExtent: 20),
        //satırda gözükecek eleman sayısını belli ediyorsun
        SliverGrid.count(crossAxisCount: 2),
      ],
    );
  }
}
