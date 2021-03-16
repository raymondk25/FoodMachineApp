import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodByDefault extends StatefulWidget {
  @override
  _FoodByDefaultState createState() => _FoodByDefaultState();
}

class _FoodByDefaultState extends State<FoodByDefault> {

  double _sliderDiscreteValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('FoodByDefault'),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    new Expanded(
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.red[700],
                            inactiveTrackColor: Colors.red[100],
                            trackShape: RectangularSliderTrackShape(),
                            trackHeight: 4.0,
                            thumbColor: Colors.redAccent,
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                            overlayColor: Colors.red.withAlpha(32),
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
              )
          ),
        )
    );
  }
}


