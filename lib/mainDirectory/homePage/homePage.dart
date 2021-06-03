import 'package:flutter/material.dart';
import 'package:project/mainDirectory/homePage/SearchBar.dart';
import './CategoriesSelection.dart';
import './DropDown.dart';
import './follow_us.dart';
import './getting_started_slider.dart';
import './gps.dart';
import 'navbar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

class _HomePageFirstState extends State<HomePageFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavDrawer(),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xff94e9ff),
                    Color(0xff4da9ef),
                  ])),
        ),
        title: new Image.asset(
          'images/logo.png',
          width: 50.0,
          height: 50.0,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('images/bg1.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: new ListView(
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
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Color(0xff94e9ff),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                new AssetImage('images/ikon1.png'), size: 30.0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(new AssetImage('images/ikon2.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                new AssetImage('images/communaute_icon.png')),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            _onPageChanged(index);
            Navigator.of(context).pushNamed(pageIndex());
            // _onItemTapped(currentIndex);
          });
        },
        // onTap: _onItemTapped,
      ),
    );
  }
  int currentIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  String pageIndex() {
    if (currentIndex == 0) {
      return "/";
    } else if (currentIndex == 1) {
      return "/plonger";
    } else if (currentIndex == 2) {
      return "/snorkeling";
    } else if (currentIndex == 3) {
      return "/login";
    } else
      return "/";
  }

}
