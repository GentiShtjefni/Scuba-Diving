import 'package:flutter/material.dart';
import 'package:project/mainDirectory/homePage/navbar.dart';
import 'package:project/mainDirectory/secondTab/gps_button.dart';
import 'package:project/mainDirectory/secondTab/register_button.dart';
import 'package:project/mainDirectory/secondTab/research_button.dart';
import 'package:project/mainDirectory/secondTab/second_tab_search.dart';
import 'package:project/mainDirectory/secondTab/title.dart';
import 'package:project/mainDirectory/secondTab/topographie_dd.dart';
import 'package:project/mainDirectory/secondTab/types_drop_down.dart';
import 'package:project/mainDirectory/secondTab/vie_marine_dd.dart';

import './paysSecondDropDown.dart';
import 'autonomie_dd.dart';
import 'conditions_dd.dart';
import 'niveau_requis_dd.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> with AutomaticKeepAliveClientMixin{
  bool homePage = false;
  bool secondPage = true;
  bool thirdPage = false;
  bool fourthPage = false;
  int currentIndex = 1;
  ScrollController _scrollController = ScrollController();

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
    super.build(context);
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
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('images/bg1.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: new ListView(
          cacheExtent: double.infinity,
          controller: _scrollController,
          children: [
            new TitleClass(),
            new gps_Button(),
            new SearchBar(),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
              child: new PaysDropDown(),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18.0),
              child: new TypesDropDown(),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18.0),
              child: new VieMarineDropDown(),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18.0),
              child: new TopographieDropDown(),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18.0),
              child: new ConditionsDropDown(),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18.0),
              child: new NiveauRequisDropDown(),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18.0),
              child: new AutonomieDropDown(),
            ),
            new ResearchButton(),
            new RegisterButton(),
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
  bool get wantKeepAlive => true;

  void _onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
