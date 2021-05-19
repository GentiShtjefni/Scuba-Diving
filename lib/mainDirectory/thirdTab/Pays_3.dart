import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/ExpandedListAnimationWidget.dart';
import 'package:project/mainDirectory/tools/ExpandedListThreeRows.dart';
import 'package:project/mainDirectory/tools/ExpandedListTwoRows.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

import '../tools/ExpandedListAnimationFourRows.dart';

class PaysDropDownThird extends StatefulWidget {
  @override
  _PaysDropDownThirdState createState() => _PaysDropDownThirdState();
}

class _PaysDropDownThirdState extends State<PaysDropDownThird> {
  bool isStrechedPay = false;
  bool isStrechedAsia = false;
  bool isStrechedEuropa = false;
  bool isStrechedNAmerika = false;
  bool isStrechedSAmerika = false;
  bool isStrechedOceania = false;
  bool isStrechedAfrique = false;
  int groupValue0;
  int groupValue1;
  int groupValue2;
  int groupValue3;
  int groupValue4;
  int groupValue5;
  int groupValue6;

  void handleGroupValue0(int value) {
    setState(() {
      groupValue0 = value;
    });
  }

  void handleGroupValue1(int value) {
    setState(() {
      groupValue1 = value;
    });
  }

  void handleGroupValue2(int value) {
    setState(() {
      groupValue2 = value;
    });
  }

  void handleGroupValue3(int value) {
    setState(() {
      groupValue3 = value;
    });
  }

  void handleGroupValue4(int value) {
    setState(() {
      groupValue4 = value;
    });
  }

  void handleGroupValue5(int value) {
    setState(() {
      groupValue5 = value;
    });
  }

  void handleGroupValue6(int value) {
    setState(() {
      groupValue6 = value;
    });
  }

  TextStyle _textStyle() {
    return new TextStyle(
      color: Colors.blue.shade900,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            // height: double.maxFinite,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(mainAxisSize: MainAxisSize.max, children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                      // height: double.maxFinite,
                      decoration: BoxDecoration(
                        border: GradientBorder.uniform(
                            width: 3.0,
                            gradient: LinearGradient(colors: <Color>[
                              Color(0xff59a5da),
                              Color(0xff60af6c)
                            ], stops: [
                              0.3,
                              0.5
                            ])),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: 45,
                            width: double.infinity,
                            padding: EdgeInsets.only(right: 2),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: <Color>[
                                      Color(0xff59a5da),
                                      Color(0xff60af6c),
                                    ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            constraints: BoxConstraints(
                              minHeight: 45,
                              minWidth: double.infinity,
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 8.0)),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Pays',
                                          style: new TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            decorationThickness: 3.0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            '(liste des plus populaires)',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isStrechedPay = !isStrechedPay;
                                      });
                                    },
                                    child: Icon(
                                      isStrechedPay
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ExpandedSection(
                              expand: isStrechedPay,
                              height: 300,
                              child: Container(
                                color: Colors.white70,
                                child: ListView(
                                  padding: EdgeInsets.all(0),
                                  shrinkWrap: true,
                                  // controller: _scrollController,
                                  children: [
                                    //controller: scrollController2,
                                    ListTile(
                                      leading: new Radio(
                                        value: 0,
                                        groupValue: groupValue0,
                                        onChanged: handleGroupValue0,
                                      ),
                                      trailing: Icon(isStrechedAsia
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text(
                                        'Asia',
                                        style: _textStyle(),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          isStrechedAsia = !isStrechedAsia;
                                        });
                                      },
                                    ),
                                    ExpandedSectionFourRows(
                                      expand: isStrechedAsia,
                                      height: 200,
                                      child: ListView(
                                        children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text(
                                                'Thailande',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text(
                                                'Inde',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text(
                                                'Srilanka',
                                                style: _textStyle(),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 3,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text(
                                                'Maldives',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 4,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text(
                                                'Oman',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 5,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text(
                                                'Japon',
                                                style: _textStyle(),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 6,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text(
                                                'Taiwan',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 7,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text(
                                                'Vietnam',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 8,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text(
                                                'Malaisie',
                                                style: _textStyle(),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 9,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text(
                                                'Indonesie',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 10,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text(
                                                'Philipines',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 11,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text(
                                                'Borneo',
                                                style: _textStyle(),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    ListTile(
                                      leading: new Radio(
                                          value: 1,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: Icon(isStrechedEuropa
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text(
                                        'Europe',
                                        style: _textStyle(),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          isStrechedEuropa = !isStrechedEuropa;
                                        });
                                      },
                                    ),
                                    ExpandedSectionThreeRows(
                                      expand: isStrechedEuropa,
                                      height: 100,
                                      child: ListView(
                                        children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text(
                                                'Turquie',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text(
                                                'Grece',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text(
                                                'Malte',
                                                style: _textStyle(),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 3,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text(
                                                'Italie',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 4,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text(
                                                'Espagne',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 5,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text(
                                                'France',
                                                style: _textStyle(),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 6,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text(
                                                'Portugal',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 7,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text(
                                                'Autres',
                                                style: _textStyle(),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    ListTile(
                                      leading: new Radio(
                                          value: 2,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: Icon(isStrechedNAmerika
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text(
                                        'Amerique du N',
                                        style: _textStyle(),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          isStrechedNAmerika =
                                              !isStrechedNAmerika;
                                        });
                                      },
                                    ),
                                    ExpandedSectionTwoRows(
                                      expand: isStrechedNAmerika,
                                      height: 100,
                                      child: ListView(
                                        children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue3,
                                                onChanged: handleGroupValue3,
                                              ),
                                              new Text(
                                                'Canada',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue3,
                                                onChanged: handleGroupValue3,
                                              ),
                                              new Text(
                                                'USA',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue3,
                                                onChanged: handleGroupValue3,
                                              ),
                                              new Text(
                                                'Mexique',
                                                style: _textStyle(),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 3,
                                                groupValue: groupValue3,
                                                onChanged: handleGroupValue3,
                                              ),
                                              new Text(
                                                'Cuba',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 4,
                                                groupValue: groupValue3,
                                                onChanged: handleGroupValue3,
                                              ),
                                              new Text('Bahamas',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 5,
                                                groupValue: groupValue3,
                                                onChanged: handleGroupValue3,
                                              ),
                                              new Text(
                                                'autres',
                                                style: _textStyle(),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    ListTile(
                                      leading: new Radio(
                                          value: 3,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: Icon(isStrechedSAmerika
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text(
                                        'America de S',
                                        style: _textStyle(),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          isStrechedSAmerika =
                                              !isStrechedSAmerika;
                                        });
                                      },
                                    ),
                                    ExpandedSectionFourRows(
                                      expand: isStrechedSAmerika,
                                      height: 250,
                                      child: ListView(children: [
                                        Row(
                                          children: [
                                            new Radio(
                                              value: 0,
                                              groupValue: groupValue4,
                                              onChanged: handleGroupValue4,
                                            ),
                                            new Text(
                                              'Honduras',
                                              style: _textStyle(),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2.0)),
                                            new Radio(
                                              value: 1,
                                              groupValue: groupValue4,
                                              onChanged: handleGroupValue4,
                                            ),
                                            new Text(
                                              'Nicaragua',
                                              style: _textStyle(),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2.0)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            new Radio(
                                              value: 2,
                                              groupValue: groupValue4,
                                              onChanged: handleGroupValue4,
                                            ),
                                            new Text(
                                              'Panama',
                                              style: _textStyle(),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2.0)),
                                            new Radio(
                                              value: 3,
                                              groupValue: groupValue4,
                                              onChanged: handleGroupValue4,
                                            ),
                                            new Text(
                                              'Colombia',
                                              style: _textStyle(),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2.0)),
                                            new Radio(
                                              value: 4,
                                              groupValue: groupValue4,
                                              onChanged: handleGroupValue4,
                                            ),
                                            new Text(
                                              'Equateur',
                                              style: _textStyle(),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            new Radio(
                                              value: 5,
                                              groupValue: groupValue4,
                                              onChanged: handleGroupValue4,
                                            ),
                                            new Text(
                                              'Bresil',
                                              style: _textStyle(),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2.0)),
                                            new Radio(
                                              value: 6,
                                              groupValue: groupValue4,
                                              onChanged: handleGroupValue4,
                                            ),
                                            new Text(
                                              'Argentine',
                                              style: _textStyle(),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2.0)),
                                            new Radio(
                                              value: 7,
                                              groupValue: groupValue4,
                                              onChanged: handleGroupValue4,
                                            ),
                                            new Text(
                                              'Costa Rica',
                                              style: _textStyle(),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            new Radio(
                                              value: 8,
                                              groupValue: groupValue4,
                                              onChanged: handleGroupValue4,
                                            ),
                                            new Text(
                                              'autres',
                                              style: _textStyle(),
                                            ),
                                          ],
                                        )
                                      ]),
                                    ),
                                    ListTile(
                                      leading: new Radio(
                                          value: 4,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: Icon(isStrechedOceania
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text(
                                        'Oceania',
                                        style: _textStyle(),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          isStrechedOceania =
                                              !isStrechedOceania;
                                        });
                                      },
                                    ),
                                    ExpandedSectionTwoRows(
                                        expand: isStrechedOceania,
                                        height: 100,
                                        child: ListView(children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue5,
                                                onChanged: handleGroupValue5,
                                              ),
                                              new Text(
                                                'Austrelie',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue5,
                                                onChanged: handleGroupValue5,
                                              ),
                                              new Text(
                                                'Nouvelle Zélande',
                                                style: _textStyle(),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue5,
                                                onChanged: handleGroupValue5,
                                              ),
                                              new Text(
                                                'auter',
                                                style: _textStyle(),
                                              )
                                            ],
                                          ),
                                        ])),
                                    ListTile(
                                      leading: new Radio(
                                          value: 5,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: Icon(isStrechedAfrique
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text(
                                        'Afrique',
                                        style: _textStyle(),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          isStrechedAfrique =
                                              !isStrechedAfrique;
                                        });
                                      },
                                    ),
                                    ExpandedSectionThreeRows(
                                        expand: isStrechedAfrique,
                                        height: 100,
                                        child: ListView(children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue6,
                                                onChanged: handleGroupValue6,
                                              ),
                                              new Text(
                                                'Egypte',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue6,
                                                onChanged: handleGroupValue6,
                                              ),
                                              new Text(
                                                'Madagascar',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue6,
                                                onChanged: handleGroupValue6,
                                              ),
                                              new Text(
                                                'Afrique du Sud',
                                                style: _textStyle(),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 3,
                                                groupValue: groupValue6,
                                                onChanged: handleGroupValue4,
                                              ),
                                              new Text(
                                                'Mozambique',
                                                style: _textStyle(),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 4,
                                                groupValue: groupValue6,
                                                onChanged: handleGroupValue4,
                                              ),
                                              new Text(
                                                'autres',
                                                style: _textStyle(),
                                              ),
                                            ],
                                          )
                                        ])),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ))
                  ],
                ),
              ]),
            )));
  }
}
