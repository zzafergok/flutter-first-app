import 'package:flutter/material.dart';

class ListeDersleri extends StatelessWidget {
  //Liste için veri kaynağı

  List<int> listenumaralari = List.generate(300, (index) => index);
  List<String> listeAltBasliklari =
      List.generate(300, (index) => "Liste elemanı alt başlık $index");

  @override
  Widget build(BuildContext context) {
    return ListView(children: listenumaralari.map(
          (oankiEleman) => Column(
            children: [
              Container(
                child: Card(
                  color: Colors.blueGrey,
                  margin: EdgeInsets.all(20),
                  elevation: 20,
                  child: ListTile(
                    leading:
                        CircleAvatar(child: Icon(Icons.android), radius: 20),
                    title: Text("Liste eleman başlık $oankiEleman"),
                    subtitle: Text(listeAltBasliklari[oankiEleman]),
                    trailing: Icon(Icons.accessibility),
                  ),
                ),
              ),
              Divider(color: Colors.red, height: 5, indent: 10, endIndent: 5),
            ],
          ),
        ).toList(),
    );
  }
}

/**
    children: [
    Column(
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
    ],
    ),
    ],
 */
