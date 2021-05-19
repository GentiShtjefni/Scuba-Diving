import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

class RegisterButton extends StatefulWidget {
  @override
  _RegisterButtonState createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 2.0, 18.0, 30.0),
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: GradientBorder.uniform(
              width: 3.0,
              gradient: LinearGradient(
                  colors: <Color>[Color(0xff59a5da), Color(0xff60af6c)],
                  stops: [0.3, 0.5])),
          borderRadius: BorderRadius.circular(30),
        ),
        child: new Center(
          child: new Text(
            'ENREGISTRER MA PLONGÉE',
            style: new TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              decorationThickness: 3.0,
              color: Colors.blue.shade900,
            ),
          ),
        ),
      ),
    );
  }
}
