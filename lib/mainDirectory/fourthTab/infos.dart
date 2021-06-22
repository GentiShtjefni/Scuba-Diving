import 'package:flutter/material.dart';
import 'package:project/mainDirectory/AppBar.dart';


class Infos extends StatefulWidget {
  const Infos({Key key}) : super(key: key);

  @override
  _InfosState createState() => _InfosState();
}

class _InfosState extends State<Infos> {
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
            child: new Text('my Infos',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 40,
              ),),
          )
      ),
    );
  }

}
