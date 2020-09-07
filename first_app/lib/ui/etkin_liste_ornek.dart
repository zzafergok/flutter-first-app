import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EtkinListeOrnek extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];

  @override
  Widget build(BuildContext context) {
    ogrenciVerileriniGetir();

    return ListView.separated(
      separatorBuilder: (context, index) {
        if (index % 4 == 0 && index != 0) {
          return Container(
            height: 3.5,
            color: Colors.black,
          );
        } else {
          return Divider();
        }
      },
      itemCount: 20,
      //itemBuilder: (context, index) => Text("Eleman $index")
      itemBuilder: (context, index) {
        return Card(
          color: index % 2 == 0 ? Colors.blue : Colors.orange,
          elevation: 4,
          child: ListTile(
            leading: Icon(Icons.perm_contact_calendar),
            title: Text(tumOgrenciler[index]._isim),
            subtitle: Text(tumOgrenciler[index]._aciklama),
            trailing: Icon(Icons.add),
            onTap: (){
              debugPrint("Seçilen eleman $index");
              Fluttertoast.showToast(
                  msg: "Seçilen eleman $index",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIos: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white
              );
            },
            onLongPress: (){
              debugPrint("Uzun basılan eleman $index");
              Fluttertoast.showToast(
                  msg: "Uzun basılan eleman $index",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIos: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white
              );
            },
          ),
        );
      },
    );
  }

  void ogrenciVerileriniGetir() {
    tumOgrenciler = List.generate(
        300,
        (index) => Ogrenci("Ogrenci $index Adı", "Ogrenci $index aciklamasi",
            index % 2 == 0 ? true : false));
  }
}

class Ogrenci {
  String _isim, _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);
}
