import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  //String baslik = "B Sayfası";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigasyon İşlemleri",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
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
                      builder: (context) => BSayfasi(),
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
                  Navigator.push<bool>(
                    context,
                    MaterialPageRoute(builder: (context) => DSayfasi()),
                  ).then((popOlayindanSonraGelenSati) {
                    debugPrint(
                        "Pop İşleminden Gelen Değer $popOlayindanSonraGelenSati");
                  });
                },
              ),
              RaisedButton(
                child: Text("Geri Dön ve Geri Gelme"),
                color: Colors.blueGrey,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ESayfasi()),
                  );
                },
              ),
              RaisedButton(
                child: Text("Geri Dön ve Geri Gelme2"),
                color: Colors.blueGrey,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => FSayfasi()),
                  );
                },
              ),
              RaisedButton(
                child: Text("Geri Dön ve Geri Gelme3"),
                color: Colors.blueGrey,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => GSayfasi()),
                  );
                },
              ),
              RaisedButton(
                child: Text("Liste sayfasına Gidelim"),
                color: Colors.blueGrey,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/listeSayfasi",
                  );
                },
              ),
              RaisedButton(
                child: Text("Form Islemlerine Git"),
                color: Colors.yellowAccent.shade100,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/textField",
                  );
                },
              ),
              RaisedButton(
                child: Text("Text ve Form Islemlerine Gidelim"),
                color: Colors.yellowAccent.shade100,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/textFormField",
                  );
                },
              ),
              RaisedButton(
                child: Text("Other Form Process"),
                color: Colors.yellowAccent.shade400,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/otherForm",
                  );
                },
              ),
              RaisedButton(
                child: Text("Date Clock Example"),
                color: Colors.yellowAccent.shade700,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/dateClock",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListeSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Sayfası",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/detay/$index");
            },
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Liste elemanı $index"),
            )),
          );
        },
        itemCount: 30,
      ),
    );
  }
}

class ListeDetay extends StatelessWidget {
  int tiklananIndex = 0;

  ListeDetay(this.tiklananIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Liste Detay Sayfası",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Liste elemanı $tiklananIndex tiklanildi"),
        )));
  }
}

class ASayfasi extends StatelessWidget {
  //String baslik = "B Sayfası";

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
                Navigator.pushNamed(context, "/BPage");
              },
            )
          ],
        ),
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  //String GelenVeri;

  //BSayfasi(this.GelenVeri);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //GelenVeri,
          "B Sayfasi",
          style: TextStyle(color: Colors.orange, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("B Sayfasi"),
              color: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, "/CPage");
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
                Navigator.pushNamed(context, "/DPage");
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
        //yukarıdaki pop altında false iken value'yu true yaparsa program siyah ekran verir
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
                  Navigator.pop<bool>(context, true);
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

class ESayfasi extends StatelessWidget {
  String baslik = "B Sayfası";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E Sayfası",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("E Sayfası"),
              color: Colors.yellow,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => FSayfasi()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class FSayfasi extends StatelessWidget {
  String baslik = "B Sayfası";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "F Sayfası",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("F Sayfası"),
              color: Colors.yellow,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => GSayfasi()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class GSayfasi extends StatelessWidget {
  String baslik = "B Sayfası";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "G Sayfası",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("G Sayfası"),
              color: Colors.yellow,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NavigasyonIslemleri()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
