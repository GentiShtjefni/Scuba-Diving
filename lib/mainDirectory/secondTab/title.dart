import 'package:flutter/material.dart';

class TitleClass extends StatelessWidget {
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
                image: new AssetImage('images/ikon1_lighter.png'),
                fit: BoxFit.fitHeight),
          ),
          child: new Text(
            'Ou plonger?',
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
