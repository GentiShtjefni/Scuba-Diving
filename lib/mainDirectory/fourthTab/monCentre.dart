import 'package:flutter/material.dart';
import 'package:project/mainDirectory/AppBar.dart';


class Centre extends StatefulWidget {
  const Centre({Key key}) : super(key: key);

  @override
  _CentreState createState() => _CentreState();
}

class _CentreState extends State<Centre> {
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
            child: new Text('Mon Centre',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 40,
              ),),
          )
      ),
    );
  }
}
