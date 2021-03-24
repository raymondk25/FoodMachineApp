import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  double _sliderDiscreteValue = 1;
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Water Machine"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
              controller: TextEditingController(text: "     Set your Time"),
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
          ),
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
              }),
          SizedBox(height: 20,),
          TextField(
              controller: TextEditingController(text: "     Set Amount of Water (per second)"),
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              new Expanded(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.blue[700],
                    inactiveTrackColor: Colors.blue[100],
                    trackShape: RectangularSliderTrackShape(),
                    trackHeight: 4.0,
                    thumbColor: Colors.blueAccent,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    overlayColor: Colors.blue.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                  ),
                  child: Slider(
                    value: _sliderDiscreteValue,
                    min: 0,
                    max: 10,
                    divisions: 10,
                    label: _sliderDiscreteValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _sliderDiscreteValue = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Set as Default',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Transform.scale(
                scale: 0.65,
                child: LiteRollingSwitch(
                  value: false,
                  textOn: 'ON',
                  textOff: 'OFF',
                  colorOn: Colors.greenAccent[700],
                  colorOff: Colors.redAccent[700],
                  iconOn: Icons.done,
                  iconOff: Icons.remove_circle_outline,
                  textSize: 16.0,
                  onChanged: (bool state) {
                    //Use it to manage the different states
                    print('Current State of SWITCH IS: $state');
                  },
                ),)
            ],
          ),
        ],
      ),
    );
  }
}
