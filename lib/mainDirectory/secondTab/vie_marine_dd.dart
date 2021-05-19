import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/ExpandedListAnimationWidget.dart';
import 'package:project/mainDirectory/tools/ExtandedListAnimationOneRow.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

class VieMarineDropDown extends StatefulWidget {
  @override
  _VieMarineDropDownState createState() => _VieMarineDropDownState();
}

class _VieMarineDropDownState extends State<VieMarineDropDown> {
  bool isStrechedVieMarine = false;
  bool isStrechedRequin = false;
  bool isStrechedMammifere = false;
  bool isStrechedNReptile = false;
  bool isStrechedCrustace = false;
  bool isStrechedRaie = false;
  bool isStrechedLimace = false;
  bool isStrechedCephlalopode = false;
  bool isStrechedCorail = false;
  bool isStrechedPelagique = false;
  bool isStrechedDerecif = false;
  bool isStrechedDefond = false;
  int groupValue0;
  int groupValue1;
  int groupValue2;
  int groupValue3;
  int groupValue4;
  int groupValue5;
  int groupValue6;
  int groupValue7;
  int groupValue8;
  int groupValue9;
  int groupValue10;
  int groupValue11;

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

  void handleGroupValue7(int value) {
    setState(() {
      groupValue7 = value;
    });
  }

  void handleGroupValue8(int value) {
    setState(() {
      groupValue8 = value;
    });
  }

  void handleGroupValue9(int value) {
    setState(() {
      groupValue9 = value;
    });
  }

  void handleGroupValue10(int value) {
    setState(() {
      groupValue10 = value;
    });
  }

  void handleGroupValue11(int value) {
    setState(() {
      groupValue11 = value;
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
                                      'Vie Marine',
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
                                        isStrechedVieMarine =
                                            !isStrechedVieMarine;
                                      });
                                    },
                                    child: Icon(
                                      isStrechedVieMarine
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
                              expand: isStrechedVieMarine,
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
                                      trailing: Icon(isStrechedRequin
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title:
                                          Text('Requin', style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedRequin = !isStrechedRequin;
                                        });
                                      },
                                    ),
                                    ExpandedSectionOneRow(
                                      expand: isStrechedRequin,
                                      height: 50,
                                      child: ListView(
                                        children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text('first',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text('second',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 3,
                                                groupValue: groupValue1,
                                                onChanged: handleGroupValue1,
                                              ),
                                              new Text('3',
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
                                      trailing: Icon(isStrechedMammifere
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text('Mammifere',
                                          style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedMammifere =
                                              !isStrechedMammifere;
                                        });
                                      },
                                    ),
                                    ExpandedSectionOneRow(
                                      expand: isStrechedMammifere,
                                      height: 50,
                                      child: ListView(
                                        children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text('one',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text('two',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue2,
                                                onChanged: handleGroupValue2,
                                              ),
                                              new Text('three',
                                                  style: _textStyle()),
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
                                      trailing: Icon(isStrechedNReptile
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text('reptile & anguille',
                                          style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedNReptile =
                                              !isStrechedNReptile;
                                        });
                                      },
                                    ),
                                    ExpandedSectionOneRow(
                                      expand: isStrechedNReptile,
                                      height: 50,
                                      child: ListView(
                                        children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue3,
                                                onChanged: handleGroupValue3,
                                              ),
                                              new Text('1',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue3,
                                                onChanged: handleGroupValue3,
                                              ),
                                              new Text('2',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue3,
                                                onChanged: handleGroupValue3,
                                              ),
                                              new Text('3',
                                                  style: _textStyle()),
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
                                      trailing: Icon(isStrechedCrustace
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title:
                                          Text('crustacé', style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedCrustace =
                                              !isStrechedCrustace;
                                        });
                                      },
                                    ),
                                    ExpandedSectionOneRow(
                                      expand: isStrechedCrustace,
                                      height: 50,
                                      child: ListView(children: [
                                        Row(
                                          children: [
                                            new Radio(
                                              value: 0,
                                              groupValue: groupValue4,
                                              onChanged: handleGroupValue4,
                                            ),
                                            new Text('1', style: _textStyle()),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2.0)),
                                            new Radio(
                                              value: 1,
                                              groupValue: groupValue4,
                                              onChanged: handleGroupValue4,
                                            ),
                                            new Text('sd', style: _textStyle()),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2.0)),
                                            new Radio(
                                              value: 2,
                                              groupValue: groupValue4,
                                              onChanged: handleGroupValue4,
                                            ),
                                            new Text('weq',
                                                style: _textStyle()),
                                          ],
                                        ),
                                      ]),
                                    ),
                                    ListTile(
                                      leading: new Radio(
                                          value: 4,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: Icon(isStrechedRaie
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text('raie', style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedRaie = !isStrechedRaie;
                                        });
                                      },
                                    ),
                                    ExpandedSectionOneRow(
                                        expand: isStrechedRaie,
                                        height: 50,
                                        child: ListView(children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue5,
                                                onChanged: handleGroupValue5,
                                              ),
                                              new Text('asd',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue5,
                                                onChanged: handleGroupValue5,
                                              ),
                                              new Text('asdasd',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue5,
                                                onChanged: handleGroupValue5,
                                              ),
                                              new Text('auter',
                                                  style: _textStyle())
                                            ],
                                          ),
                                        ])),
                                    ListTile(
                                      leading: new Radio(
                                          value: 5,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: Icon(isStrechedLimace
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text('limace & gastropode',
                                          style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedLimace = !isStrechedLimace;
                                        });
                                      },
                                    ),
                                    ExpandedSectionOneRow(
                                        expand: isStrechedLimace,
                                        height: 50,
                                        child: ListView(children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue6,
                                                onChanged: handleGroupValue6,
                                              ),
                                              new Text('1',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue6,
                                                onChanged: handleGroupValue6,
                                              ),
                                              new Text('2',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue6,
                                                onChanged: handleGroupValue6,
                                              ),
                                              new Text('Afrique du Sud',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                        ])),
                                    ListTile(
                                      leading: new Radio(
                                          value: 6,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: Icon(isStrechedCephlalopode
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text('céphalopode & concombre',
                                          style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedCephlalopode =
                                              !isStrechedCephlalopode;
                                        });
                                      },
                                    ),
                                    ExpandedSectionOneRow(
                                        expand: isStrechedCephlalopode,
                                        height: 50,
                                        child: ListView(children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue7,
                                                onChanged: handleGroupValue7,
                                              ),
                                              new Text('1',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue7,
                                                onChanged: handleGroupValue7,
                                              ),
                                              new Text('2',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue7,
                                                onChanged: handleGroupValue7,
                                              ),
                                              new Text('Afrique du Sud',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                        ])),
                                    ListTile(
                                      leading: new Radio(
                                          value: 7,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: Icon(isStrechedCorail
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text(
                                          'corail/bivalve/oursin/étoile de me',
                                          style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedCorail = !isStrechedCorail;
                                        });
                                      },
                                    ),
                                    ExpandedSectionOneRow(
                                        expand: isStrechedCorail,
                                        height: 50,
                                        child: ListView(children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue8,
                                                onChanged: handleGroupValue8,
                                              ),
                                              new Text('1',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue8,
                                                onChanged: handleGroupValue8,
                                              ),
                                              new Text('2',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue8,
                                                onChanged: handleGroupValue8,
                                              ),
                                              new Text('Afrique du Sud',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                        ])),
                                    ListTile(
                                      leading: new Radio(
                                          value: 8,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: Icon(isStrechedPelagique
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text('poisson pélagique',
                                          style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedPelagique =
                                              !isStrechedPelagique;
                                        });
                                      },
                                    ),
                                    ExpandedSectionOneRow(
                                        expand: isStrechedPelagique,
                                        height: 50,
                                        child: ListView(children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue9,
                                                onChanged: handleGroupValue9,
                                              ),
                                              new Text('1',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue9,
                                                onChanged: handleGroupValue9,
                                              ),
                                              new Text('2',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue9,
                                                onChanged: handleGroupValue9,
                                              ),
                                              new Text('Afrique du Sud',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                        ])),
                                    ListTile(
                                      leading: new Radio(
                                          value: 9,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: Icon(isStrechedDerecif
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text('poisson de récif',
                                          style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedDerecif =
                                              !isStrechedDerecif;
                                        });
                                      },
                                    ),
                                    ExpandedSectionOneRow(
                                        expand: isStrechedDerecif,
                                        height: 50,
                                        child: ListView(children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue10,
                                                onChanged: handleGroupValue10,
                                              ),
                                              new Text('1',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue10,
                                                onChanged: handleGroupValue10,
                                              ),
                                              new Text('2',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue10,
                                                onChanged: handleGroupValue10,
                                              ),
                                              new Text('hey',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                        ])),
                                    ListTile(
                                      leading: new Radio(
                                          value: 10,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: Icon(isStrechedDefond
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down),
                                      title: Text('poisson de fond',
                                          style: _textStyle()),
                                      onTap: () {
                                        setState(() {
                                          isStrechedDefond = !isStrechedDefond;
                                        });
                                      },
                                    ),
                                    ExpandedSectionOneRow(
                                        expand: isStrechedDefond,
                                        height: 50,
                                        child: ListView(children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 0,
                                                groupValue: groupValue11,
                                                onChanged: handleGroupValue11,
                                              ),
                                              new Text('1',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 1,
                                                groupValue: groupValue11,
                                                onChanged: handleGroupValue11,
                                              ),
                                              new Text('2',
                                                  style: _textStyle()),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2.0)),
                                              new Radio(
                                                value: 2,
                                                groupValue: groupValue11,
                                                onChanged: handleGroupValue11,
                                              ),
                                              new Text('Afrique du Sud',
                                                  style: _textStyle()),
                                            ],
                                          ),
                                        ])),
                                    ListTile(
                                      leading: new Radio(
                                          value: 11,
                                          groupValue: groupValue0,
                                          onChanged: handleGroupValue0),
                                      trailing: new TextField(),
                                      title:
                                          Text('autres:', style: _textStyle()),
                                    )
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
