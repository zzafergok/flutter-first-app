import 'package:flutter/material.dart';

class FormIslemleri extends StatefulWidget {
  @override
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Islemleri"),
      ),
      body: ListView(
        children: [
          TextField(),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 6,
            color: Colors.orangeAccent.shade200,
            child: Align(
              alignment: Alignment.center,
              child: Text("Hi Flutter"),
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
