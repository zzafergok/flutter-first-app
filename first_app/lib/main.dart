import 'package:flutter/material.dart';
import 'ui/navigasyon_islemleri.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/"          : (context) => ASayfasi(),
      "/BPage"     : (context) => BSayfasi(),
      "/CPage"     : (context) => CSayfasi(),
      "/DPage"     : (context) => DSayfasi(),
      "/EPage"     : (context) => ESayfasi(),
      "/FPage"     : (context) => FSayfasi(),
      "/GPage"     : (context) => GSayfasi(),
    },
    title: "Flutter Öğreniyorum",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    //home: NavigasyonIslemleri(),
  ));
}
