import 'package:flutter/material.dart';
import 'package:project/mainDirectory/homePage/navbar.dart';
import 'package:project/mainDirectory/thirdTab/Accesibilita.dart';
import 'package:project/mainDirectory/thirdTab/Pays_3.dart';
import 'package:project/mainDirectory/thirdTab/autonomie_dd_3.dart';
import 'package:project/mainDirectory/thirdTab/conditions_dd_3.dart';
import 'package:project/mainDirectory/thirdTab/gps_button_3.dart';
import 'package:project/mainDirectory/thirdTab/register_button_3.dart';
import 'package:project/mainDirectory/thirdTab/research_button_3.dart';
import 'package:project/mainDirectory/thirdTab/second_tab_search_3.dart';
import 'package:project/mainDirectory/thirdTab/topographie_dd_3.dart';
import 'package:project/mainDirectory/thirdTab/vie_marine_dd_3.dart';

import 'title_class_3.dart';

class ThirdTab extends StatefulWidget {
  @override
  _ThirdTabState createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {
  bool homePage = false;
  bool secondPage = false;
  bool thirdPage = true;
  bool fourthPage = false;
  int currentIndex = 2;

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,

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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('images/bg1.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: new ListView(
          cacheExtent: double.infinity,

          children: [
            new TitleClassThird(),
            new gps_Button_3(),
            new SearchBarThird(),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
              child: new PaysDropDownThird(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
              child: new Accesibilita(),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18.0),
              child: new VieMarineDropDownThird(),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18.0),
              child: new TopographieDropDownThird(),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18.0),
              child: new ConditionsDropDownThird(),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18.0),
              child: new AutonomieDropDownThird(),
            ),
            new ResearchButtonThird(),
            new RegisterButtonThird(),
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
            icon: Icon(Icons.home,
                color: homePage ? Colors.blue : Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                new AssetImage('images/ikon1.png'), size: 30.0,
                color: secondPage ? Colors.blue : Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(new AssetImage('images/ikon2.png'),
                color: thirdPage ? Colors.blue : Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                new AssetImage('images/communaute_icon.png'),
                color: fourthPage ? Colors.blue : Colors.white),
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
  void _onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

}
