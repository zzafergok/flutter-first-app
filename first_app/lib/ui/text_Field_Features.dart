import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldProcess extends StatefulWidget {
  @override
  _TextFieldProcessState createState() => _TextFieldProcessState();
}

class _TextFieldProcessState extends State<TextFieldProcess> {
  String gelenDeger = "";
  FocusNode _fNode;
  int maxLine = 1;
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    _fNode = FocusNode();
    //_fNode olayını floatActionButton için yaptık. buttona basıldığında tetiklenip input focus alsın diye yaptık.
    //daha sonra initstate içinde setstate vererek burada da maxline'ımızı genişlettik(yazarken daha rahat yazmakiçin).
    _fNode.addListener(() {
      setState(() {
        if (_fNode.hasFocus) {
          maxLine = 3;
        } else {
          maxLine = 1;
        }
      });
    });
    textController = TextEditingController(text: "varsayılan");
  }

  @override
  void dispose() {
    _fNode.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Islemleri"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(height: 24,width: 24,

            child: FloatingActionButton(
              heroTag: "aa",
              onPressed: () {
                FocusScope.of(context).requestFocus(_fNode);
              },
              child: Icon(Icons.edit,size: 14,color: Colors.black45,),
              mini: true,
            ),
          ),

          SizedBox(
            height: 10,
          ),

          FloatingActionButton(
            heroTag: "ab",
            onPressed: () {
              textController.text=("hi, i came");
            },
            child: Icon(Icons.offline_pin,color: Colors.blueGrey.shade600,),
            mini: true,
          ),

          SizedBox(
            height: 10,
          ),

          FloatingActionButton(
            heroTag: "ac",
            onPressed: () {
              FocusScope.of(context).requestFocus(_fNode);
            },
            child: Icon(Icons.bookmark),
          ),
        ],
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
              controller: textController,
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
