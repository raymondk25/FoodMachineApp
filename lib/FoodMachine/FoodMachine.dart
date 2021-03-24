import 'package:flutter/material.dart';
import 'package:zhuanti_app/FoodMachine/Setting.dart';
import 'package:zhuanti_app/HomePage.dart';

class FoodMachine extends StatefulWidget {
  @override
  _FoodMachineState createState() => _FoodMachineState();

}

class _FoodMachineState extends State<FoodMachine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Food Machine"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => {
                showAlertDialog(context)
              },
              color: Colors.redAccent,
              padding: EdgeInsets.only(
                  left: 150, right: 150, top: 30, bottom: 30),
              child: Column( // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Text("Feed by Default", style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,)
                ],
              ),
            ),
            Column(children: <Widget>[SizedBox(height: 20,)],),

            FlatButton(
              onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Setting()))},
              color: Colors.redAccent,
              padding: EdgeInsets.only(
                  left: 164, right: 164, top: 30, bottom: 30),
              child: Column( // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Text("Setting", style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,)
                ],
              ),
            ),

            Column(children: <Widget>[SizedBox(height: 20,)],),

            FlatButton(
              onPressed: () => {},
              color: Colors.redAccent,
              padding: EdgeInsets.only(
                  left: 163.5, right: 163.5, top: 30, bottom: 30),
              child: Column( // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Text("History", style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,)
                ],
              ),
            ),
            ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget settingButton = FlatButton(
    child: Text("Go to Setting"),
    onPressed:  () {Navigator.push(context, MaterialPageRoute(builder: (context) => Setting()));},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Alert!!"),
    content: Text("Default is not yet set."),
    actions: [
      settingButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}