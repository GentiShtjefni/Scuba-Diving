import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

class ResearchButtonThird extends StatefulWidget {
  @override
  _ResearchButtonThirdState createState() => _ResearchButtonThirdState();
}

class _ResearchButtonThirdState extends State<ResearchButtonThird> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0.0),
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
            'RECHERCHE',
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
