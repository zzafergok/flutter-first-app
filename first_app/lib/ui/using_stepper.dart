import 'package:flutter/material.dart';

class UsingStepper extends StatefulWidget {
  @override
  _UsingStepperState createState() => _UsingStepperState();
}

class _UsingStepperState extends State<UsingStepper> {
  int _aktifStep = 0;
  String isim, mail, sifre;
  List<Step> tumStepler;

  @override
  void initState() {
    super.initState();
    tumStepler=_tumStepler();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using Stepper"),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          steps: tumStepler,
          currentStep: _aktifStep,
          onStepTapped: (tiklanilanStep) {
            setState(() {
              _aktifStep = tiklanilanStep;
            });
          },
          onStepContinue: (){
            setState(() {
              if(_aktifStep < tumStepler.length-1){
                _aktifStep++;
              }
            });
          },
          onStepCancel: (){
            setState(() {
              if(_aktifStep > 0){
                _aktifStep--;
              }else{
                _aktifStep = 0;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
        title: Text("Usernama title"),
        subtitle: Text("Username subtitle"),
        state: StepState.indexed,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
            labelText: "Username label",
            hintText: "UsernameHintText",
            border: OutlineInputBorder(),
          ),
        ),
      ),
      Step(
        title: Text("Mail title"),
        subtitle: Text("Mail subtitle"),
        state: StepState.indexed,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
            labelText: "Mail label",
            hintText: "MailText",
            border: OutlineInputBorder(),
          ),
        ),
      ),
      Step(
        title: Text("Password title"),
        subtitle: Text("Password subtitle"),
        state: StepState.indexed,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
            labelText: "Password label",
            hintText: "PasswordText",
            border: OutlineInputBorder(),
          ),
        ),
      ),
    ];
    return stepler;
  }
}
