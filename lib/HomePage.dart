import 'package:flutter/material.dart';
import 'file:///C:/Users/Raymond/AndroidStudioProjects/zhuanti_app/lib/FoodMachine/FoodMachine.dart';
import 'file:///C:/Users/Raymond/AndroidStudioProjects/zhuanti_app/lib/WaterMachine/WaterMachine.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Feeding Machine"),
          backgroundColor: Colors.blue,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => FoodMachine()))},
                color: Colors.red,
                padding: EdgeInsets.only(left: 150, right: 150, top: 30, bottom: 30),
                child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Text("Food Machine", style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)
                  ],
                ),
              ),
              Column(children: <Widget>[SizedBox(height: 20)],),
              FlatButton(
                onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => WaterMachine()))},
                color: Colors.lightBlue,
                padding: EdgeInsets.only(left: 150, right: 150, top: 30, bottom: 30),
                child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Text("Water Machine", style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}