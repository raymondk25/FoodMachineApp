import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:zhuanti_app/HomePage.dart';

void main() =>
  runApp(MaterialApp(home: new MyApp(),debugShowCheckedModeBanner: false,));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 8,
        navigateAfterSeconds: new HomePage(),
        title: new Text('Welcome to FoodMachine APP',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
        image: Image.asset('assets/images/splash.jpg'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.red
    );
  }
}

