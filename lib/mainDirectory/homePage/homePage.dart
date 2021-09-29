import 'package:flutter/material.dart';
import 'package:project/mainDirectory/AppBar.dart';
import 'package:project/mainDirectory/homePage/SearchBar.dart';

import './CategoriesSelection.dart';
import './DropDown.dart';
import './follow_us.dart';
import './getting_started_slider.dart';
import './gps.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      child: new ListView(
        // padding: const EdgeInsets.all(15.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new BodyClass(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new CategoriesClass(),
          ),
          Padding(padding: const EdgeInsets.all(15.0)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new DropDown1(),
          ),
          Padding(padding: const EdgeInsets.all(15.0)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new SearchBarClass(),
          ),
          Padding(padding: const EdgeInsets.all(15.0)),
          new SliderClass(),
          Padding(padding: const EdgeInsets.all(7)),
          new FollowUsClass(),

          // SelectDropList(),
        ],
      ),
      currentIndex: 0,
      isSelectedHome: true,
      isSelectedSecond: false,
      isSelectedThird: false,
      isSelectedFourth: false,

    );
  }
}
