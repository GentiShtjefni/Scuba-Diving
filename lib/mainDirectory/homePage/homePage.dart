import 'package:flutter/material.dart';
import 'package:project/mainDirectory/homePage/SearchBar.dart';
import './CategoriesSelection.dart';
import './DropDown.dart';
import './follow_us.dart';
import './getting_started_slider.dart';
import './gps.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new AssetImage('images/bg1.png'),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
      child: HomePageFirst(),
    );
  }
}

class HomePageFirst extends StatefulWidget {
  const HomePageFirst({Key key}) : super(key: key);

  @override
  _HomePageFirstState createState() => _HomePageFirstState();
}

class _HomePageFirstState extends State<HomePageFirst> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return new ListView(
      padding: const EdgeInsets.all(15.0),
      children: [
        new BodyClass(),
        new CategoriesClass(),
        Padding(padding: const EdgeInsets.all(15.0)),
        new DropDown1(),
        Padding(padding: const EdgeInsets.all(15.0)),
        new SearchBarClass(),
        Padding(padding: const EdgeInsets.all(15.0)),
        new SliderClass(),
        Padding(padding: const EdgeInsets.all(7)),
        new FollowUsClass(),

        // SelectDropList(),
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
