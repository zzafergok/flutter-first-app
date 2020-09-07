import 'package:flutter/material.dart';

class ListeDersleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Card(
            color: Colors.blueGrey,
            margin: EdgeInsets.all(20),
            elevation: 20,
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.android), radius: 20),
              title: Text("Liste eleman başlık"),
              subtitle: Text("Liste elemanı altbaşlık"),
              trailing: Icon(Icons.accessibility),
            ),
          ),
        ),
        Divider(color: Colors.red, height: 5, indent: 10, endIndent: 5),
        Container(
          child: Card(
            color: Colors.blueGrey,
            margin: EdgeInsets.all(20),
            elevation: 20,
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.android), radius: 20),
              title: Text("Liste eleman başlık"),
              subtitle: Text("Liste elemanı altbaşlık"),
              trailing: Icon(Icons.accessibility),
            ),
          ),
        ),
        Divider(color: Colors.red, height: 5, indent: 10, endIndent: 5),
        Container(
          child: Card(
            color: Colors.blueGrey,
            margin: EdgeInsets.all(20),
            elevation: 20,
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.android), radius: 20),
              title: Text("Liste eleman başlık"),
              subtitle: Text("Liste elemanı altbaşlık"),
              trailing: Icon(Icons.accessibility),
            ),
          ),
        ),
        Divider(color: Colors.red, height: 5, indent: 10, endIndent: 5),
        Container(
          child: Card(
            color: Colors.blueGrey,
            margin: EdgeInsets.all(20),
            elevation: 20,
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.android), radius: 20),
              title: Text("Liste eleman başlık"),
              subtitle: Text("Liste elemanı altbaşlık"),
              trailing: Icon(Icons.accessibility),
            ),
          ),
        ),
      ],
    );
  }
}
