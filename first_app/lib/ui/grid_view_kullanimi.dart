import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          color: Colors.orange[100 * ((index + 1) % 8)],
          child: Text(
            "Merhaba Flutter $index",
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}

/**
    GridView.extent(
    //her bir elemanın genişliğini ayarlayıp öyle gösteren yapı
    maxCrossAxisExtent: 100,
    //en baş ve en son uç kısımlardan çekerken bir efect olluşuyor onu aç-kapa yapabiliyorsun
    //eleman sayısı az iken daha belirgin bir görüntü alıyor ve daha net anlaşılıyor
    primary: true,
    reverse: false,
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.all(10),
    crossAxisSpacing: 25,
    mainAxisSpacing: 40,
    children: [
    Container(
    alignment: Alignment.center ,
    color: Colors.orange.shade500,
    child: Text(
    "Merhaba Flutter1",
    textAlign: TextAlign.center,
    ),
    ),
    Container(
    alignment: Alignment.center ,
    color: Colors.orange.shade500,
    child: Text(
    "Merhaba Flutter2",
    textAlign: TextAlign.center,
    ),
    ),
    Container(
    alignment: Alignment.center ,
    color: Colors.orange.shade500,
    child: Text(
    "Merhaba Flutter3",
    textAlign: TextAlign.center,
    ),
    ),
    Container(
    alignment: Alignment.center ,
    color: Colors.orange.shade500,
    child: Text(
    "Merhaba Flutter4",
    textAlign: TextAlign.center,
    ),
    ),
    ],
    );
 */

/**
    GridView.count(
    crossAxisCount: 4,
    //en baş ve en son uç kısımlardan çekerken bir efect olluşuyor onu aç-kapa yapabiliyorsun
    //eleman sayısı az iken daha belirgin bir görüntü alıyor ve daha net anlaşılıyor
    primary: true,
    reverse: true,
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.all(10),
    crossAxisSpacing: 25,
    mainAxisSpacing: 40,
    children: [
    Container(
    alignment: Alignment.center ,
    color: Colors.orange.shade500,
    child: Text(
    "Merhaba Flutter1",
    textAlign: TextAlign.center,
    ),
    ),
    Container(
    alignment: Alignment.center ,
    color: Colors.orange.shade500,
    child: Text(
    "Merhaba Flutter2",
    textAlign: TextAlign.center,
    ),
    ),
    Container(
    alignment: Alignment.center ,
    color: Colors.orange.shade500,
    child: Text(
    "Merhaba Flutter3",
    textAlign: TextAlign.center,
    ),
    ),
    Container(
    alignment: Alignment.center ,
    color: Colors.orange.shade500,
    child: Text(
    "Merhaba Flutter4",
    textAlign: TextAlign.center,
    ),
    ),
    ],
    );
 */
