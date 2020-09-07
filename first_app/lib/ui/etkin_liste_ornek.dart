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
            onTap: () {
              debugPrint("Seçilen eleman $index");
              toastMesajGoster(index, false);
              alertDialogGoster(context, index);
            },
            onLongPress: () {
              debugPrint("Uzun basılan eleman $index");
              toastMesajGoster(index, true);
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

  void toastMesajGoster(int index, bool uzunBasim) {
    Fluttertoast.showToast(
        msg: uzunBasim
            ? "Uzun Basıldı : " + tumOgrenciler[index].toString()
            : "Tek Tıklama : " + tumOgrenciler[index].toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 2,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  void alertDialogGoster(BuildContext ctx, int index) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Alert Dialog"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Seçilen öğrenci adı ${tumOgrenciler[index]._isim}"),
                  Text("Seçilen öğrenci açıklaması ${tumOgrenciler[index]._aciklama}"),
                ],
              ),
            ),
            actions: [
              ButtonTheme.bar(
                child: ButtonBar(
                  children: [
                    FlatButton(
                      child: Text("Tamam"),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    ),
                    FlatButton(
                      child: Text("Kapat"),
                      //color: Colors.purple,
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}

class Ogrenci {
  String _isim, _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    return "Seçilen öğrenci adı $_isim Açıklaması $_aciklama";
  }
}
