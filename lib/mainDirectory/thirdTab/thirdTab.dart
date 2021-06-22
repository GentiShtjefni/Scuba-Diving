import 'package:flutter/material.dart';
import 'package:project/mainDirectory/AppBar.dart';
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

  @override
  Widget build(BuildContext context) {

    return MainScreen(
      currentIndex: 2,
      isSelectedHome: false,
      isSelectedSecond: false,
      isSelectedThird: true,
      isSelectedFourth: false,
      child:Container(
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
    );

  }

}
