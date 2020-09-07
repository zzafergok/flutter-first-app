import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.orange, accentColor: Colors.green),
    home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Dersleri",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),

        // deneme örneği
        body: Column(
          children: <Widget>[
            Text(
              "Resim ve Buton Türleri",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.red.shade300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.network('https://picsum.photos/250?image=9'),
                          Text("Network Image"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red.shade300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset("assets/images/cat.jpg"),
                          Text("Asset Image"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red.shade300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png'),
                            backgroundColor: Colors.yellow.shade400,
                            radius: 50,
                            foregroundColor: Colors.green,
                          ),
                          Text("Circle Image"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.red.shade300,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FadeInImage.assetNetwork(
                              placeholder: "assets/images/loading.gif",
                              image: 'https://picsum.photos/250?image=9',
                              height: 75),
                          Text("FadeInImage"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red.shade300,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlutterLogo(
                            size: 60,
                            colors: Colors.orange,
                            style: FlutterLogoStyle.horizontal,
                            textColor: Colors.black,
                          ),
                          Text("Flutter logo"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red.shade300,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //Placeholder(color: Colors.blueGrey, fallbackHeight: 50, fallbackWidth: 50,),
                          Expanded(
                            child: Placeholder(
                              color: Colors.blueAccent.shade700,
                              strokeWidth: 2,
                            ),
                          ),
                          Text("Placeholder"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    child: Text("zafer gök"),
                    color: Colors.red,
                    onPressed: () => debugPrint("Fat arrowlu button çalıştı"),
                  ),
                  RaisedButton(
                    child: Text("Flutter ve Dart Dersleri"),
                    onPressed: () {
                      uzunMethod();
                    },
                    elevation: 12,
                    textColor: Colors.orange,
                  ),
                  IconButton(
                    icon: Icon(Icons.add_circle_outline, size: 32),
                    onPressed: () {},
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Flat Button",
                      style: TextStyle(fontSize: 32),
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
  ));
}

void uzunMethod() {
  debugPrint("Uzun Method");
}
