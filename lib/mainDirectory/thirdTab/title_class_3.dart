import 'package:flutter/material.dart';

class TitleClassThird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: new AssetImage('images/snorkeling_icon.png'),
                fit: BoxFit.fitHeight),
          ),
          child: new Text(
            'Où faire du snorkeling ?',
            style: new TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.w900),
          ),
        ),
      )),
    );
  }
}
