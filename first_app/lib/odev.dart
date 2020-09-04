import 'package:flutter/material.dart';

children: <Widget>[
  Expanded(
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget> [
Expanded(
child: Container(
//alignment: Alignment.center,
child: Text(
"D",
textAlign: TextAlign.center,
),
margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
color: Colors.orange
),
flex: 3,
),
Expanded(
child: Container(
child: Text(
"A",
textAlign: TextAlign.center,
),
margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
color: Colors.red,
),
flex: 3,
),
Expanded(
child: Container(
child: Text(
"R",
textAlign: TextAlign.center,
),
margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
color: Colors.green,
),
flex: 3,
),
Expanded(
child: Container(
child: Text(
"T",
textAlign: TextAlign.center,
),
margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
color: Colors.blueGrey,
),
flex: 3,
),
],
),
),
],