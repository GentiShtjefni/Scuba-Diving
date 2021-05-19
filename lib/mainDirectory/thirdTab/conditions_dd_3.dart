import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/ExpandedListAnimationFourRows.dart';
import 'package:project/mainDirectory/tools/ExpandedListAnimationWidget.dart';
import 'package:project/mainDirectory/tools/ExpandedListThreeRows.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

class ConditionsDropDownThird extends StatefulWidget {
  @override
  _ConditionsDropDownThirdState createState() => _ConditionsDropDownThirdState();
}

class _ConditionsDropDownThirdState extends State<ConditionsDropDownThird> {
  bool isStrechedConditions = false;
  bool isStrechedTemp = false;
  bool isStrechedCourant = false;
  bool isStrechedVisibilite = false;
  int groupValue0;
  int groupValue1;
  int groupValue2;
  int groupValue3;

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
                                    child: Text(
                                      'Conditions',
                                      style: new TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        decorationThickness: 3.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isStrechedConditions =
                                            !isStrechedConditions;
                                      });
                                    },
                                    child: Icon(
                                      isStrechedConditions
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
                              expand: isStrechedConditions,
                              height: 150,
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
                                      trailing: Icon(isStrechedTemp
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text('température eau',
                                          style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedTemp = !isStrechedTemp;
                                        });
                                      },
                                    ),
                                    ExpandedSectionThreeRows(
                                      expand: isStrechedTemp,
                                      height: 150,
                                      child: ListView(
                                        children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text('entre 0oC et 10oC',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text('entre 11oC et 20oC',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text('21oC et plus',
                                                  style: _textStyle()),
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
                                      trailing: Icon(isStrechedCourant
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title:
                                          Text('courant', style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedCourant =
                                              !isStrechedCourant;
                                        });
                                      },
                                    ),
                                    ExpandedSectionFourRows(
                                      expand: isStrechedCourant,
                                      height: 200,
                                      child: ListView(
                                        children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text('inexistan',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text('faible',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text('modéré',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                  value: 3,
                                                  groupValue: groupValue2,
                                                  onChanged: handleGroupValue2),
                                              new Text('fort',
                                                  style: _textStyle())
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
                                      trailing: Icon(isStrechedVisibilite
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text('visibilité',
                                          style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedVisibilite =
                                              !isStrechedVisibilite;
                                        });
                                      },
                                    ),
                                    ExpandedSectionFourRows(
                                      expand: isStrechedVisibilite,
                                      height: 200,
                                      child: ListView(
                                        children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue3,
                                                onChanged: handleGroupValue3,
                                              ),
                                              new Text('0 à 10m',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue3,
                                                onChanged: handleGroupValue3,
                                              ),
                                              new Text('10m à 20m',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue3,
                                                onChanged: handleGroupValue3,
                                              ),
                                              new Text('20m et +',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                  value: 3,
                                                  groupValue: groupValue3,
                                                  onChanged: handleGroupValue3),
                                              new Text('difficulté autre',
                                                  style: _textStyle())
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
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
