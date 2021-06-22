import 'package:flutter/material.dart';
import 'package:project/mainDirectory/AppBar.dart';
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


class SecondClassTab extends StatefulWidget {
  const SecondClassTab({Key key}) : super(key: key);

  @override
  _SecondClassTabState createState() => _SecondClassTabState();
}

class _SecondClassTabState extends State<SecondClassTab> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MainScreen(
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
      currentIndex: 1,
      isSelectedHome: false,
      isSelectedSecond: true,
      isSelectedThird: false,
      isSelectedFourth: false,
    );
  }
}

