import 'package:flutter/material.dart';
import 'ui/navigasyon_islemleri.dart';

void main() {
  runApp(MaterialApp(
    //initialRoute: "/CPage/DPage/EPage",
    routes: {
      "/": (context) => NavigasyonIslemleri(),
      "/BPage": (context) => BSayfasi(),
      "/CPage": (context) => CSayfasi(),
      "/DPage": (context) => DSayfasi(),
      "/EPage": (context) => ESayfasi(),
      "/FPage": (context) => FSayfasi(),
      "/GPage": (context) => GSayfasi(),
      "CPage/DPage": (context) => DSayfasi(),
      "/CPage/DPage/EPage": (context) => ESayfasi(),
    },
    //hatalı rota varsa daha önceden belirlediğiniz bir rotaya atama yapılan yapı
    onUnknownRoute: (RouteSettings settings) =>
        MaterialPageRoute(builder: (context) => NavigasyonIslemleri()),
    title: "Flutter Öğreniyorum",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    //home: NavigasyonIslemleri(),
  ));
}
