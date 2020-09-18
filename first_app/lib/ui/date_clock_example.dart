import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateClockExample extends StatefulWidget {
  @override
  _DateClockExampleState createState() => _DateClockExampleState();
}

class _DateClockExampleState extends State<DateClockExample> {
  @override
  Widget build(BuildContext context) {

    DateTime suan = DateTime.now();
    DateTime ucAyOncesi = DateTime(2020, suan.month-3);
    DateTime yirmiGunSonrasi = DateTime(2020, suan.day+20);

    TimeOfDay suankiSaat = TimeOfDay.now();

    return Scaffold(
      appBar: AppBar(
        title: Text("Date Clock Example"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Tarih sec"),
              color: Colors.orange,
              onPressed: () {
                showDatePicker(context: context, initialDate: suan, firstDate: ucAyOncesi, lastDate: yirmiGunSonrasi)
                .then((secilenTarih) {
                  debugPrint(secilenTarih.toString());
                  debugPrint(secilenTarih.toIso8601String());
                  debugPrint(secilenTarih.millisecondsSinceEpoch.toString());
                  debugPrint(secilenTarih.add(Duration(days: 20)).toString());
                  var newDate = DateTime.parse(secilenTarih.toUtc().toString());
                  debugPrint(newDate.toString());

                  print(formatDate(secilenTarih, [dd, '.', mm, '.', yyyy]));
                });
              },
            ),
            RaisedButton(
              child: Text("Saat sec"),
              color: Colors.blueAccent,
              onPressed: () {
                showTimePicker(context: context, initialTime: suankiSaat)
                    .then((secilenSaat){
                      debugPrint(secilenSaat.format(context));
                      debugPrint(secilenSaat.hour.toString() + ":" + secilenSaat.minute.toString());

                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
