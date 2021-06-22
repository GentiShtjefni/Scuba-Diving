import 'package:flutter/material.dart';
import 'package:project/mainDirectory/AppBar.dart';


class Voyages extends StatefulWidget {
  const Voyages({Key key}) : super(key: key);

  @override
  _VoyagesState createState() => _VoyagesState();
}

class _VoyagesState extends State<Voyages> {
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      currentIndex: 3,
      isSelectedHome: false,
      isSelectedSecond: false,
      isSelectedThird: false,
      isSelectedFourth: false,
      child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage('images/bg1.png'),
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
          ),
          child: new Center(
            child: new Text('my Voyages',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 40,
              ),),
          )
      ),
    );
  }
}
