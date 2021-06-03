import 'package:flutter/material.dart';

class CostumRadioButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CostumRadioButtonState();
  }
}

class CostumRadioButtonState extends State {
  bool _isSelectedDiving = false;
  bool _isSelectedSecond = true;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            new Expanded(
              child: new ElevatedButton.icon(
                icon: ImageIcon(
                  new AssetImage('images/ikon1.png'),
                  size: 70.0,
                  color: _isSelectedDiving ? Colors.white : Color(0xff60af6c),
                ),
                label: Text(''),
                onPressed: () {
                  setState(() {
                    _isSelectedDiving = true;
                    _isSelectedSecond = false;
                  });
                },
                style: TextButton.styleFrom(
                  elevation: 8,
                  shape: new CircleBorder(),
                  backgroundColor:
                      _isSelectedDiving ? Color(0xff60af6c) : Colors.white,
                  minimumSize: Size(80.0, 80.0),
                ),
              ),
            ),
            new Expanded(
                child: new ElevatedButton.icon(
              icon: ImageIcon(
                new AssetImage('images/ikon2.png'),
                size: 70.0,
                color: _isSelectedSecond ? Colors.white : Color(0xff60af6c),
              ),
              label: Text(''),
              onPressed: () {
                setState(() {
                  _isSelectedDiving = false;
                  _isSelectedSecond = true;
                });
              },
              style: TextButton.styleFrom(
                elevation: 8,
                shape: new CircleBorder(),
                backgroundColor:
                    _isSelectedSecond ? Color(0xff60af6c) : Colors.white,
                minimumSize: Size(80.0, 80.0),
              ),
            ),
            ),
          ]),
    );
  }
}
