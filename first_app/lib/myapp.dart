import 'package:flutter/material.dart';
import 'ui/resim_ve_button_turleri.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange, accentColor: Colors.green),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Flutter Dersleri",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),

          // deneme örneği
          body: ResimveButton()),
    );
  }
}
