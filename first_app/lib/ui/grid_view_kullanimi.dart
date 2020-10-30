import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.deepPurple, width: 3, style: BorderStyle.solid),
              /** border: Border(top: BorderSide(color: Colors.purple,width: 5.0,style: BorderStyle.solid)
                  bottom: BorderSide(color: Colors.red,width: 10.0)) */
              /**borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                  ),*/
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(4.0, 8.0),
                  blurRadius: 15.0,
                ),
              ],
              shape: BoxShape.circle,
              color: Colors.orange[100 * ((index + 1) % 8)],
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              /**image: DecorationImage(
                  image: AssetImage("assets/images/cat.jpg"),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter),*/
            ),
            margin: EdgeInsets.all(5),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Merhaba Flutter $index",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 11),
              ),
            ),
          ),
          onTap: () => debugPrint("Merhaba Flutter $index Tıklanıldı"),
          onDoubleTap: () => debugPrint("Merhaba Flutter $index Çift Tıklanıldı"),
          onLongPress: () => debugPrint("Merhaba Flutter $index Uzun Tıklanıldı"),
          onHorizontalDragStart: (e) => debugPrint("Merhaba Flutter $index Uzun Tıklanıldı $e"),
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
