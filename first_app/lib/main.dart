import 'package:flutter/material.dart';
import 'ui/grid_view_kullanimi.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Öğreniyorum",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: Scaffold(
      appBar: AppBar(
        title:
        Text("Grid Dersleri",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: GridViewOrnek(),
    ),
  ));
}
