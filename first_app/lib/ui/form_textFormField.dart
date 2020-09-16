import 'package:flutter/material.dart';

class FormandTextFormField extends StatefulWidget {
  @override
  _FormandTextFormFieldState createState() => _FormandTextFormFieldState();
}

class _FormandTextFormFieldState extends State<FormandTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        accentColor: Colors.redAccent,
        primaryColorBrightness: Brightness.light,
        hintColor: Colors.pink,
      ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.save),),
        appBar: AppBar(
          title: Text("Form and TextFormField"),),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            child: ListView(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: "Adınız ve Soyadınız",
                    labelText: "Ad Soyad",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email Adresiniz",
                    labelText: "Email",
                    border: OutlineInputBorder(),
                     //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                  ),
                ),
                SizedBox(height: 10,),
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
                ),
                SizedBox(height: 10,),
                RaisedButton.icon(
                  onPressed: (){},
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
}
