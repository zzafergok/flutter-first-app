import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B Sayfası";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigasyon İşlemleri",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("AnaSayfa"),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ASayfasi(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("B Sayfası"),
              color: Colors.grey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BSayfasi(baslik),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("C Sayfasına Git ve Geri Gel"),
              color: Colors.redAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CSayfasi(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("Geri Dön ve Veri Gönder"),
              color: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DSayfasi()),
                ).then((popOlayindanSonraGelenSati) {
                  debugPrint(
                      "Pop İşleminden Gelen Değer $popOlayindanSonraGelenSati");
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ASayfasi extends StatelessWidget {
  String baslik = "B Sayfası";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A Sayfası",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("A Sayfası"),
              color: Colors.yellow,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BSayfasi(baslik),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  String GelenVeri;

  BSayfasi(this.GelenVeri);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          GelenVeri,
          style: TextStyle(color: Colors.orange, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text(GelenVeri),
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavigasyonIslemleri(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class CSayfasi extends StatelessWidget {
  String baslik = "B Sayfası";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "C Sayfası",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Geri Dön"),
              color: Colors.yellow,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            RaisedButton(
              child: Text("A Sayfasına Git"),
              color: Colors.yellow,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ASayfasi(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        debugPrint("onwill pop çalıştı");
        //aşağıdaki işlemde ise geri döndürme işlemi yapılır fakat işlemin false olarak yapıldığını da bilmek lazım
        //yani bir silme ya da ekleme işlemi yapıyorsa kullanıcı geri dönerse işlemin iptalini sağlamış olur
        Navigator.pop(context, false);
        //aşağıdaki değer false olursa geri döndürme işlemini başka bir fonksiyona atamış oluruz
        // eğer onun için fonksiyon yazdıysak
        return Future.value(false);
        //yukarıdaki pop olatında false iken value'yu true yaparsa program siyah ekran verir
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "D Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("D Sayfası"),
                color: Colors.yellow,
                onPressed: () {
                  Navigator.pop(context, true);
                  //true demek ürün silindi
                  //false ürün silinmedi veya kullanıcı vazgeçti
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
