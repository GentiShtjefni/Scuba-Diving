import 'package:flutter/material.dart';

import '../tools/borderradius.dart';
import 'CostumRadioButton2.dart';

class CategoriesClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CategoriesClassState();
  }
}

class CategoriesClassState extends State {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
          color: Colors.white70,
          border: GradientBorder.uniform(
              width: 3.0,
              gradient: LinearGradient(
                  colors: <Color>[Color(0xff59a5da), Color(0xff60af6c)],
                  stops: [0.3, 0.5])),
          borderRadius: BorderRadius.circular(30.0)),
      child: new Column(
        children: [
          new Padding(padding: EdgeInsets.all(10.0)),
          new Text(
            'Recherche par Categorie:',
            style: new TextStyle(
                fontSize: 16.0,
                color: Colors.blue,
                fontWeight: FontWeight.w700),
          ),
          Padding(padding: const EdgeInsets.all(10.0)),
          new CostumRadioButton(),
          Padding(padding: const EdgeInsets.all(10.0)),
        ],
      ),
    );
  }
}
