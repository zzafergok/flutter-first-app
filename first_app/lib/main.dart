import 'package:flutter/material.dart';
import 'ui/collapsable_tool_bar_ornek.dart';

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
      body: CollasableToolBarOrnek(),
    ),
  ));
}
