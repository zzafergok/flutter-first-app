import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormIslemleri extends StatefulWidget {
  @override
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {
  String gelenDeger = "";

  FocusNode _fNode;
  int maxLine = 1;

  @override
  void initState() {
    super.initState();
    _fNode = FocusNode();
    //_fNode olayını floatActionButton için yaptık. buttona basıldığında tetiklenip input focus alsın diye yaptık.
    //daha sonra initstate içinde setstate vererek burada da maxline'ımızı genişlettik(yazarken daha rahat yazmakiçin).
    _fNode.addListener(() {
      setState(() {
        if(_fNode.hasFocus){
          maxLine=3;
        }else{
          maxLine=1;
        }
      });
    });
  }

  @override
  void dispose() {
    _fNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Islemleri"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FocusScope.of(context).requestFocus(_fNode);
        },
        child: Icon(Icons.edit),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              //TextInputType -> sadece number açan bir özellik
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              autofocus: false,
              focusNode: _fNode,
              maxLines: maxLine,
              decoration: InputDecoration(
                  hintText: "Notunuzu Buraya Giriniz",
                  labelText: "1 - Not",
                  labelStyle: TextStyle(fontWeight: FontWeight.w800),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  icon: Icon(Icons.edit),
                  //prefixIcon: Icon(Icons.done),
                  suffixIcon: Icon(Icons.add),
                  filled: true,
                  fillColor: Colors.limeAccent.shade50),
              maxLength: 30,
              maxLengthEnforced: true,
              //onChanged: (String s) => debugPrint("On Change Tetiklendi $s"),
              //onSubmitted: (String s) => debugPrint("On SubmittedTetiklendi $s"),
              onSubmitted: (String s) {
                gelenDeger = s;
              },
              cursorColor: Colors.orange,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              //TextInputType -> sadece number açan bir özellik
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              autofocus: false,
              maxLines: 1,
              decoration: InputDecoration(
                  hintText: "Notunuzu Buraya Giriniz",
                  labelText: "1 - Not",
                  labelStyle: TextStyle(fontWeight: FontWeight.w800),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  icon: Icon(Icons.edit),
                  //prefixIcon: Icon(Icons.done),
                  suffixIcon: Icon(Icons.add),
                  filled: true,
                  fillColor: Colors.limeAccent.shade50),
              maxLength: 30,
              maxLengthEnforced: true,
              //onChanged: (String s) => debugPrint("On Change Tetiklendi $s"),
              //onSubmitted: (String s) => debugPrint("On SubmittedTetiklendi $s"),
              onSubmitted: (String s) {
                gelenDeger = s;
              },
              cursorColor: Colors.orange,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 6,
            color: Colors.orangeAccent.shade200,
            child: Align(
              alignment: Alignment.center,
              child: Text(gelenDeger),
            ),
          ),
        ],
      ),
    );
  }
}

/*SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1.25,
          color: Colors.orangeAccent.shade200,
          child: Align(
            alignment: Alignment.center,
            child: Text("Hi Flutter"),
          ),
        ),
)*/
