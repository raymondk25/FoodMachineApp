import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zhuanti_app/main.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
                initialDateTime: _dateTime ,
                use24hFormat: false,
                onDateTimeChanged: (dateTime){
                  print(dateTime);
                  setState(() {
                    _dateTime = dateTime;
                  });
                }),
          ),
          RaisedButton(
              child: Text('Confirm'),
              onPressed: () {
                showDialog(context: context,
                    builder: (_) => AlertDialog(
                      title: Text('The Date and Time you selected'),
                      content: Text('${_dateTime.day}/${_dateTime.month}/${_dateTime.year}\n${_dateTime.hour}:${_dateTime.minute}'),
                    ));
              })
        ],
      ),
    );
  }
}
