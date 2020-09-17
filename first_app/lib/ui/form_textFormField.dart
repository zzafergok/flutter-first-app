import 'package:flutter/material.dart';

class FormandTextFormField extends StatefulWidget {
  @override
  _FormandTextFormFieldState createState() => _FormandTextFormFieldState();
}

class _FormandTextFormFieldState extends State<FormandTextFormField> {
  String _adSoyad, _email, _sifre;
  bool otomatikKontrol = false;

  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          accentColor: Colors.orange,
          hintColor: Colors.blueAccent,
          primaryColor: Colors.green),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.save),
        ),
        appBar: AppBar(
          title: Text("Form and TextFormField"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            autovalidate: otomatikKontrol ,
            child: ListView(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: "Adınız ve Soyadınız",
                    labelText: "Ad Soyad",
                    border: OutlineInputBorder(),
                  ),
                  //başlangıçta hangi değerin gözükmesini istiyorsan onun için bunu kullanabilirsin. Silinebilir türden bir yapı
                  //initialValue: "zafer",
                  validator: _adSoyadOnayla,
                  /*(String girilenVeri) {
                    if (girilenVeri.length < 6) {
                      return "Lütfen adınızı soyadınız tam giriniz";
                    } else {
                      return null;
                    }
                  },*/
                  onSaved: (deger) => _adSoyad=deger,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email Adresiniz",
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                  ),
                  validator: _emailKontrol,
                  /*(String girilenVeri) {
                    if(girilenVeri.contains("@") != true){
                      return "email adresi geçersiz";
                    }else{
                      return null;
                    }
                  },*/
                  onSaved: (deger) => _email=deger,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Şifreniz",
                    labelText: "Şifre",
                    border: OutlineInputBorder(),
                    //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                  ),
                  validator: (String girilenVeri) {
                    if(girilenVeri.length < 6){
                      return "parolanız 6 karakterden fazla olması gerekiyor";
                    }else{
                      return null;
                    }
                  },
                  onSaved: (deger) => _sifre=deger,
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton.icon(
                  onPressed: _girisBilgileriniOnayla,
                  icon: Icon(Icons.save),
                  label: Text("Kaydet"),
                  disabledColor: Colors.blueGrey,
                  color: Colors.orangeAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _girisBilgileriniOnayla() {
    if(formKey.currentState.validate()){
      formKey.currentState.save();
      //debugPrint("Girilen Ad-Soyad: $_adSoyad \n Girilen Email: $_email \n Girilen Şifre: $_sifre");
      return _showDialog();
    }else{
      setState(() {
        otomatikKontrol=true;
      });
    }
  }

  String _emailKontrol(String mail) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(mail))
      return 'Geçersiz mail';
    else
      return null;
  }

  String _adSoyadOnayla(String name){
    RegExp regex=RegExp("^[a-zA-Z]+\$");
    if (!regex.hasMatch(name))
      return 'Isim numara içermemeli';
    else
      return null;
  }
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Hoşgeldiniz $_adSoyad"),
          //content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
