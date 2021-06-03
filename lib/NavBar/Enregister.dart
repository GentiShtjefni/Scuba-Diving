import 'package:flutter/material.dart';
import 'package:project/mainDirectory/homePage/navbar.dart';
import 'package:project/mainDirectory/tools/ExpandedConditions.dart';
import 'package:project/mainDirectory/tools/ExpandedListACocher.dart';
import 'package:project/mainDirectory/tools/ExpandedListAnimationFourRows.dart';
import 'package:project/mainDirectory/tools/ExpandedListAnimationWidget.dart';
import 'package:project/mainDirectory/tools/ExpandedListThreeRows.dart';
import 'package:project/mainDirectory/tools/ExpandedTypeIncournotable.dart';
import 'package:project/mainDirectory/tools/ExpandedVm.dart';
import 'package:project/mainDirectory/tools/ExtandedListAnimationOneRow.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

class Enregister extends StatefulWidget {
  const Enregister({Key key}) : super(key: key);

  @override
  _EnregisterState createState() => _EnregisterState();
}

class _EnregisterState extends State<Enregister> {
  int currentIndex = 0;
  int _currentIndexRegister = 0;
  bool _isSelectedSnorkeling = false;
  bool _isSelectedPlonge = true;
  bool isStrechedPay = false;
  bool isStrechedType = false;
  bool isStrechedACocher = false;
  bool isStrechedTopographie = false;
  bool isStrechedConditions = false;
  bool isStrechedAutonomie = false;
  bool isStrechedVM = false;
  bool isStrechedVM2 = false;
  bool isStrechedIncournatable = false;
  bool isStrechedNivAcc = false;
  bool isStrechedActivities = false;


  int groupValue0;

  void handleGroupValue0(int value) {
    setState(() {
      groupValue0 = value;
    });
  }

  int groupValue1;

  void handleGroupValue1(int value) {
    setState(() {
      groupValue1 = value;
    });
  }

  int groupValue2;

  void handleGroupValue2(int value) {
    setState(() {
      groupValue2 = value;
    });
  }

  int groupValue3;

  void handleGroupValue3(int value) {
    setState(() {
      groupValue3 = value;
    });
  }

  int groupValue4;

  void handleGroupValue4(int value) {
    setState(() {
      groupValue4 = value;
    });
  }

  int groupValuecourant;

  void handleGroupValuecourant(int value) {
    setState(() {
      groupValuecourant = value;
    });
  }

  int groupValuetemp;

  void handleGroupValuetemp(int value) {
    setState(() {
      groupValuetemp = value;
    });
  }

  int groupValuevis;

  void handleGroupValuevis(int value) {
    setState(() {
      groupValuevis = value;
    });
  }

  int groupValueDifficulte;

  void handleGroupValueDiff(int value) {
    setState(() {
      groupValueDifficulte = value;
    });
  }
  int groupValueNiveau;

  void handleGroupValueNiveau(int value) {
    setState(() {
      groupValueNiveau = value;
    });
  }
  int groupValueAutonomie;

  void handleGroupValueAutonomie(int value) {
    setState(() {
      groupValueAutonomie = value;
    });
  }
  int groupValueVM;

  void handleGroupValueVM(int value) {
    setState(() {
      groupValueVM = value;
    });
  }
  int groupValueVM2;

  void handleGroupValueVM2(int value) {
    setState(() {
      groupValueVM2 = value;
    });
  }
  int groupValueInc;

  void handleGroupValueInc(int value) {
    setState(() {
      groupValueInc = value;
    });
  }
  int groupValueNiveauAcc;

  void handleGroupValueNiveauAcc(int value) {
    setState(() {
      groupValueNiveauAcc = value;
    });
  }
  int groupValueActivities;

  void handleGroupValueActivities(int value) {
    setState(() {
      groupValueActivities = value;
    });
  }


  TextStyle _textStyle() {
    return new TextStyle(
      color: Colors.blue.shade900,
    );
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
      body: new Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('images/bg1.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: new IndexedStack(
          index: _currentIndexRegister,
          children: [
            ListView(
              children: [
                Container(
                  height: 1000,
                  child: new Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: new Container(
                          height: 100,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: new AssetImage('images/enregisterbg.png'),
                                fit: BoxFit.fitHeight),
                          ),
                          child: new Text(
                            'Enregistrer',
                            style: new TextStyle(
                                fontSize: 20,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      new ListTile(
                        title: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 55.0, 25.0, 20.0),
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                    Color(0xff59a5da),
                                    Color(0xff60af6c),
                                  ]),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: new Center(
                              child: new Text(
                                'Enregister un site',
                                style: new TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  decorationThickness: 3.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currentIndexRegister = 1;
                          });
                        },
                      ),
                      new Center(
                        child: Text('OU',
                            style: new TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              decorationThickness: 3.0,
                              color: Colors.blue.shade900,
                            )),
                      ),
                      new ListTile(
                        title: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 20.0),
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                    Color(0xff59a5da),
                                    Color(0xff60af6c),
                                  ]),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: new Center(
                              child: new Text(
                                "Enregister un centre",
                                style: new TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  decorationThickness: 3.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currentIndexRegister = 2;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                new Column(
                  children: [
                    new Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: new Container(
                        height: 100,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: new AssetImage('images/enregisterbg.png'),
                              fit: BoxFit.fitHeight),
                        ),
                        child: new Text(
                          'Enregistrer un site',
                          style: new TextStyle(
                              fontSize: 20,
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    new SizedBox(
                      height: 14,
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _isSelectedSnorkeling = false;
                              _isSelectedPlonge = true;
                            });
                          },
                          child: new Container(
                            decoration: BoxDecoration(
                              gradient: _isSelectedPlonge
                                  ? LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                          Color(0xff59a5da),
                                          Color(0xff60af6c),
                                        ])
                                  : null,
                              color: _isSelectedPlonge ? null : Colors.white,
                            ),
                            child: new Text(
                              ' plongée ',
                              style: TextStyle(
                                fontSize: 14,
                                color: _isSelectedPlonge
                                    ? Colors.white
                                    : Color(0xff60af6c),
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        new SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _isSelectedSnorkeling = true;
                              _isSelectedPlonge = false;
                            });
                          },
                          child: new Container(
                            decoration: BoxDecoration(
                              gradient: _isSelectedSnorkeling
                                  ? LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                          Color(0xff59a5da),
                                          Color(0xff60af6c),
                                        ])
                                  : null,
                            ),
                            child: new Text(
                              ' snorkeling ',
                              style: TextStyle(
                                fontSize: 14,
                                color: _isSelectedSnorkeling
                                    ? Colors.white
                                    : Color(0xff60af6c),
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(25, 20, 25, 25),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(30),
                        child: ListTile(
                          title: new Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: new Center(
                              child: new Text(
                                "Activer GPS ou recherche sur cart",
                                style: new TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  decorationThickness: 3.0,
                                  color: Colors.blue.shade900,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: new Container(
                        decoration: new BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff59a5da),
                                Color(0xff60af6c),
                              ]),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 13),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: InputBorder.none,
                            hintText: 'NOM',
                            hintStyle: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                            // height: double.maxFinite,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                          // height: double.maxFinite,
                                          decoration: BoxDecoration(
                                            border: GradientBorder.uniform(
                                                width: 3.0,
                                                gradient: LinearGradient(
                                                    colors: <Color>[
                                                      Color(0xff59a5da),
                                                      Color(0xff60af6c)
                                                    ],
                                                    stops: [
                                                      0.3,
                                                      0.5
                                                    ])),
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                height: 45,
                                                width: double.infinity,
                                                padding:
                                                    EdgeInsets.only(right: 2),
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                        begin:
                                                            Alignment.topLeft,
                                                        end: Alignment
                                                            .bottomRight,
                                                        colors: <Color>[
                                                          Color(0xff59a5da),
                                                          Color(0xff60af6c),
                                                        ]),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                constraints: BoxConstraints(
                                                  minHeight: 45,
                                                  minWidth: double.infinity,
                                                ),
                                                alignment: Alignment.center,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.0)),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 5,
                                                                vertical: 5),
                                                        child: Text(
                                                          'Lieu',
                                                          style: new TextStyle(
                                                            fontSize: 20,
                                                            color: Colors.white,
                                                            decorationThickness:
                                                                3.0,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            isStrechedPay =
                                                                !isStrechedPay;
                                                          });
                                                        },
                                                        child: Icon(
                                                          isStrechedPay
                                                              ? Icons
                                                                  .keyboard_arrow_up
                                                              : Icons
                                                                  .keyboard_arrow_down,
                                                          color: Colors.white,
                                                          size: 40,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              ExpandedSectionPays(
                                                  expand: isStrechedPay,
                                                  height: 350,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10.0),
                                                    child: Container(
                                                      color: Colors.white70,
                                                      child: Column(
                                                        // controller: _scrollController,
                                                        children: [
                                                          //controller: scrollController2,
                                                          ListTile(
                                                            leading: new Radio(
                                                              value: 0,
                                                              groupValue:
                                                                  groupValue0,
                                                              onChanged:
                                                                  handleGroupValue0,
                                                            ),
                                                            title: Text(
                                                              'Asia',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue0 == 0 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 1,
                                                                groupValue:
                                                                    groupValue0,
                                                                onChanged:
                                                                    handleGroupValue0),
                                                            title: Text(
                                                              'Europe',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue0 == 1 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),

                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 2,
                                                                groupValue:
                                                                    groupValue0,
                                                                onChanged:
                                                                    handleGroupValue0),
                                                            title: Text(
                                                              'Amerique du N',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue0 == 2 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 3,
                                                                groupValue:
                                                                    groupValue0,
                                                                onChanged:
                                                                    handleGroupValue0),
                                                            title: Text(
                                                              'America de S',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue0 == 3 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 4,
                                                                groupValue:
                                                                    groupValue0,
                                                                onChanged:
                                                                    handleGroupValue0),
                                                            title: Text(
                                                              'Oceania',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue0 == 4 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 5,
                                                                groupValue:
                                                                    groupValue0,
                                                                onChanged:
                                                                    handleGroupValue0),
                                                            title: Text(
                                                              'Afrique',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue0 == 5 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ))
                                      ],
                                    ),
                                  ]),
                            ))),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                            // height: double.maxFinite,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                          // height: double.maxFinite,
                                          decoration: BoxDecoration(
                                            border: GradientBorder.uniform(
                                                width: 3.0,
                                                gradient: LinearGradient(
                                                    colors: <Color>[
                                                      Color(0xff59a5da),
                                                      Color(0xff60af6c)
                                                    ],
                                                    stops: [
                                                      0.3,
                                                      0.5
                                                    ])),
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                height: 45,
                                                width: double.infinity,
                                                padding:
                                                    EdgeInsets.only(right: 2),
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                        begin:
                                                            Alignment.topLeft,
                                                        end: Alignment
                                                            .bottomRight,
                                                        colors: <Color>[
                                                          Color(0xff59a5da),
                                                          Color(0xff60af6c),
                                                        ]),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                constraints: BoxConstraints(
                                                  minHeight: 45,
                                                  minWidth: double.infinity,
                                                ),
                                                alignment: Alignment.center,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.0)),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 5,
                                                                vertical: 5),
                                                        child: Text(
                                                          'Type',
                                                          style: new TextStyle(
                                                            fontSize: 20,
                                                            color: Colors.white,
                                                            decorationThickness:
                                                                3.0,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            isStrechedType =
                                                                !isStrechedType;
                                                          });
                                                        },
                                                        child: Icon(
                                                          isStrechedType
                                                              ? Icons
                                                                  .keyboard_arrow_up
                                                              : Icons
                                                                  .keyboard_arrow_down,
                                                          color: Colors.white,
                                                          size: 40,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              ExpandedSectionThreeRows(
                                                  expand: isStrechedType,
                                                  height: 350,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 18.0),
                                                    child: Container(
                                                      color: Colors.white70,
                                                      child: Column(
                                                        // controller: _scrollController,
                                                        children: [
                                                          //controller: scrollController2,
                                                          ListTile(
                                                            leading: new Radio(
                                                              value: 0,
                                                              groupValue:
                                                                  groupValue1,
                                                              onChanged:
                                                                  handleGroupValue1,
                                                            ),
                                                            title: Text(
                                                              'à cocher site plongée',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue1 == 0 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 1,
                                                                groupValue:
                                                                    groupValue1,
                                                                onChanged:
                                                                    handleGroupValue1),
                                                            title: Text(
                                                              'snorkeling',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue1 == 1 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),

                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 2,
                                                                groupValue:
                                                                    groupValue1,
                                                                onChanged:
                                                                    handleGroupValue1),
                                                            title: Text(
                                                              'centre',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue1 == 2 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ))
                                      ],
                                    ),
                                  ]),
                            ))),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                            // height: double.maxFinite,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                          // height: double.maxFinite,
                                          decoration: BoxDecoration(
                                            border: GradientBorder.uniform(
                                                width: 3.0,
                                                gradient: LinearGradient(
                                                    colors: <Color>[
                                                      Color(0xff59a5da),
                                                      Color(0xff60af6c)
                                                    ],
                                                    stops: [
                                                      0.3,
                                                      0.5
                                                    ])),
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                height: 45,
                                                width: double.infinity,
                                                padding:
                                                    EdgeInsets.only(right: 2),
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                        begin:
                                                            Alignment.topLeft,
                                                        end: Alignment
                                                            .bottomRight,
                                                        colors: <Color>[
                                                          Color(0xff59a5da),
                                                          Color(0xff60af6c),
                                                        ]),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                constraints: BoxConstraints(
                                                  minHeight: 45,
                                                  minWidth: double.infinity,
                                                ),
                                                alignment: Alignment.center,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.0)),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 5,
                                                                vertical: 5),
                                                        child: Text(
                                                          'À cocher type de plongée',
                                                          style: new TextStyle(
                                                            fontSize: 20,
                                                            color: Colors.white,
                                                            decorationThickness:
                                                                3.0,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            isStrechedACocher =
                                                                !isStrechedACocher;
                                                          });
                                                        },
                                                        child: Icon(
                                                          isStrechedACocher
                                                              ? Icons
                                                                  .keyboard_arrow_up
                                                              : Icons
                                                                  .keyboard_arrow_down,
                                                          color: Colors.white,
                                                          size: 40,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              ExpandedSectionAChocher(
                                                  expand: isStrechedACocher,
                                                  height: 450,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 18.0),
                                                    child: Container(
                                                      color: Colors.white70,
                                                      child: Column(
                                                        // controller: _scrollController,
                                                        children: [
                                                          //controller: scrollController2,
                                                          ListTile(
                                                            leading: new Radio(
                                                              value: 0,
                                                              groupValue:
                                                                  groupValue2,
                                                              onChanged:
                                                                  handleGroupValue2,
                                                            ),
                                                            title: Text(
                                                              'nuit',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue2 == 0 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 1,
                                                                groupValue:
                                                                    groupValue2,
                                                                onChanged:
                                                                    handleGroupValue2),
                                                            title: Text(
                                                              'profondeur min 30m',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue2 == 1 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 2,
                                                                groupValue:
                                                                    groupValue2,
                                                                onChanged:
                                                                    handleGroupValue2),
                                                            title: Text(
                                                              'nitrox',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue2 == 2 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 3,
                                                                groupValue:
                                                                    groupValue2,
                                                                onChanged:
                                                                    handleGroupValue2),
                                                            title: Text(
                                                              'en bateau',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue2 == 3 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 4,
                                                                groupValue:
                                                                    groupValue2,
                                                                onChanged:
                                                                    handleGroupValue2),
                                                            title: Text(
                                                              'do board',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue2 == 4 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 5,
                                                                groupValue:
                                                                    groupValue2,
                                                                onChanged:
                                                                    handleGroupValue2),
                                                            title: Text(
                                                              'sous glace',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue2 == 5 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 6,
                                                                groupValue:
                                                                    groupValue2,
                                                                onChanged:
                                                                    handleGroupValue2),
                                                            title: Text(
                                                              'eau douce',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue2 == 6 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          Row(
                                                            children: [
                                                              Radio(
                                                                  value: 7,
                                                                  groupValue:
                                                                      groupValue2,
                                                                  onChanged:
                                                                      handleGroupValue2),
                                                              new Text(
                                                                  'autres:',
                                                                  style:
                                                                      _textStyle()),
                                                              Expanded(
                                                                  child:
                                                                      new TextField()),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ))
                                      ],
                                    ),
                                  ]),
                            ))),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                            // height: double.maxFinite,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                          // height: double.maxFinite,
                                          decoration: BoxDecoration(
                                            border: GradientBorder.uniform(
                                                width: 3.0,
                                                gradient: LinearGradient(
                                                    colors: <Color>[
                                                      Color(0xff59a5da),
                                                      Color(0xff60af6c)
                                                    ],
                                                    stops: [
                                                      0.3,
                                                      0.5
                                                    ])),
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                height: 45,
                                                width: double.infinity,
                                                padding:
                                                    EdgeInsets.only(right: 2),
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                        begin:
                                                            Alignment.topLeft,
                                                        end: Alignment
                                                            .bottomRight,
                                                        colors: <Color>[
                                                          Color(0xff59a5da),
                                                          Color(0xff60af6c),
                                                        ]),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                constraints: BoxConstraints(
                                                  minHeight: 45,
                                                  minWidth: double.infinity,
                                                ),
                                                alignment: Alignment.center,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.0)),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 5,
                                                                vertical: 5),
                                                        child: Text(
                                                          'Topographie',
                                                          style: new TextStyle(
                                                            fontSize: 20,
                                                            color: Colors.white,
                                                            decorationThickness:
                                                                3.0,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            isStrechedTopographie =
                                                                !isStrechedTopographie;
                                                          });
                                                        },
                                                        child: Icon(
                                                          isStrechedTopographie
                                                              ? Icons
                                                                  .keyboard_arrow_up
                                                              : Icons
                                                                  .keyboard_arrow_down,
                                                          color: Colors.white,
                                                          size: 40,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              ExpandedSectionFourRows(
                                                  expand: isStrechedTopographie,
                                                  height: 400,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 18.0),
                                                    child: Container(
                                                      color: Colors.white70,
                                                      child: Column(
                                                        // controller: _scrollController,
                                                        children: [
                                                          //controller: scrollController2,
                                                          ListTile(
                                                            leading: new Radio(
                                                              value: 0,
                                                              groupValue:
                                                                  groupValue3,
                                                              onChanged:
                                                                  handleGroupValue3,
                                                            ),
                                                            title: Text(
                                                              'épave',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue3 == 0 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 1,
                                                                groupValue:
                                                                    groupValue3,
                                                                onChanged:
                                                                    handleGroupValue3),
                                                            title: Text(
                                                              'tombant',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue3 == 1 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 2,
                                                                groupValue:
                                                                    groupValue3,
                                                                onChanged:
                                                                    handleGroupValue3),
                                                            title: Text(
                                                              'récif',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue3 == 2 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 3,
                                                                groupValue:
                                                                    groupValue3,
                                                                onChanged:
                                                                    handleGroupValue3),
                                                            title: Text(
                                                              'sable/mangrove',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue3 == 3 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 4,
                                                                groupValue:
                                                                    groupValue3,
                                                                onChanged:
                                                                    handleGroupValue3),
                                                            title: Text(
                                                              'grotte',
                                                              style:
                                                              new TextStyle(
                                                                color: groupValue3 == 4 ? Colors.blue.shade900 : Colors.black,
                                                              ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            leading: new Radio(
                                                                value: 5,
                                                                groupValue:
                                                                    groupValue3,
                                                                onChanged:
                                                                    handleGroupValue3),
                                                            title: Text(
                                                              'volcanique',
                                                              style:
                                                                  new TextStyle(
                                                                    color: groupValue3 == 5 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                            ),
                                                            onTap: () {},
                                                          ),
                                                          Row(
                                                            children: [
                                                              Radio(
                                                                  value: 5,
                                                                  groupValue:
                                                                      groupValue3,
                                                                  onChanged:
                                                                      handleGroupValue3),
                                                              new Text(
                                                                  'autres:',
                                                                  style:
                                                                      _textStyle()),
                                                              Expanded(
                                                                  child:
                                                                      new TextField()),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ))
                                      ],
                                    ),
                                  ]),
                            ))),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                            // height: double.maxFinite,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                          // height: double.maxFinite,
                                          decoration: BoxDecoration(
                                            border: GradientBorder.uniform(
                                                width: 3.0,
                                                gradient: LinearGradient(
                                                    colors: <Color>[
                                                      Color(0xff59a5da),
                                                      Color(0xff60af6c)
                                                    ],
                                                    stops: [
                                                      0.3,
                                                      0.5
                                                    ])),
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                height: 45,
                                                width: double.infinity,
                                                padding:
                                                    EdgeInsets.only(right: 2),
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                        begin:
                                                            Alignment.topLeft,
                                                        end: Alignment
                                                            .bottomRight,
                                                        colors: <Color>[
                                                          Color(0xff59a5da),
                                                          Color(0xff60af6c),
                                                        ]),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                constraints: BoxConstraints(
                                                  minHeight: 45,
                                                  minWidth: double.infinity,
                                                ),
                                                alignment: Alignment.center,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.0)),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 5,
                                                                vertical: 5),
                                                        child: Text(
                                                          'Conditions',
                                                          style: new TextStyle(
                                                            fontSize: 20,
                                                            color: Colors.white,
                                                            decorationThickness:
                                                                3.0,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            isStrechedConditions =
                                                                !isStrechedConditions;
                                                          });
                                                        },
                                                        child: Icon(
                                                          isStrechedConditions
                                                              ? Icons
                                                                  .keyboard_arrow_up
                                                              : Icons
                                                                  .keyboard_arrow_down,
                                                          color: Colors.white,
                                                          size: 40,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              ExpandedSectionConditions(
                                                  expand: isStrechedConditions,
                                                  height: 350,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 18.0),
                                                    child: Container(
                                                      color: Colors.white70,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        // controller: _scrollController,
                                                        children: [
                                                          //controller: scrollController2,
                                                          new Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        10.0,
                                                                    vertical:
                                                                        10.0),
                                                            child: Row(
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          8.0),
                                                                  child:
                                                                      new Container(
                                                                    height: 10,
                                                                    width: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      border: Border.all(
                                                                          color:
                                                                              Colors.green),
                                                                    ),
                                                                  ),
                                                                ),
                                                                new Text(
                                                                    'température eau',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .blue
                                                                          .shade900,
                                                                      fontSize:
                                                                          15,
                                                                    )),
                                                              ],
                                                            ),
                                                          ),
                                                          new Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 10),
                                                            child: Column(
                                                              children: [
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            0,
                                                                        groupValue:
                                                                            groupValuetemp,
                                                                        onChanged:
                                                                            handleGroupValuetemp),
                                                                    new Text(
                                                                      'entre 0oC et 10oC',
                                                                        style: new TextStyle(
                                                                          color: groupValuetemp == 0 ? Colors.blue : Colors.black,
                                                                        )
                                                                    )
                                                                  ],
                                                                ),
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            1,
                                                                        groupValue:
                                                                            groupValuetemp,
                                                                        onChanged:
                                                                            handleGroupValuetemp),
                                                                    new Text(
                                                                        'entre 11oC et 20oC',
                                                                        style: new TextStyle(
                                                                          color: groupValuetemp == 1 ? Colors.blue : Colors.black,
                                                                        ))
                                                                  ],
                                                                ),
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            2,
                                                                        groupValue:
                                                                            groupValuetemp,
                                                                        onChanged:
                                                                            handleGroupValuetemp),
                                                                    new Text(
                                                                        '21oC et plus',
                                                                        style: new TextStyle(
                                                                          color: groupValuetemp == 2 ? Colors.blue : Colors.black,
                                                                        ))
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          new Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        10.0,
                                                                    vertical:
                                                                        10.0),
                                                            child: Row(
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          8.0),
                                                                  child:
                                                                      new Container(
                                                                    height: 10,
                                                                    width: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      border: Border.all(
                                                                          color:
                                                                              Colors.green),
                                                                    ),
                                                                  ),
                                                                ),
                                                                new Text(
                                                                    'courant',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .blue
                                                                          .shade900,
                                                                      fontSize:
                                                                          15,
                                                                    )),
                                                              ],
                                                            ),
                                                          ),
                                                          new Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 10),
                                                            child: Column(
                                                              children: [
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            0,
                                                                        groupValue:
                                                                            groupValuecourant,
                                                                        onChanged:
                                                                            handleGroupValuecourant),
                                                                    new Text(
                                                                      'inexistan',
                                                                        style: new TextStyle(
                                                                          color: groupValuecourant == 0 ? Colors.blue : Colors.black,
                                                                        )
                                                                    )
                                                                  ],
                                                                ),
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            1,
                                                                        groupValue:
                                                                            groupValuecourant,
                                                                        onChanged:
                                                                            handleGroupValuecourant),
                                                                    new Text(
                                                                        'faible',
                                                                        style: new TextStyle(
                                                                          color: groupValuecourant == 1 ? Colors.blue : Colors.black,
                                                                        ))
                                                                  ],
                                                                ),
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            2,
                                                                        groupValue:
                                                                            groupValuecourant,
                                                                        onChanged:
                                                                            handleGroupValuecourant),
                                                                    new Text(
                                                                        'modéré',
                                                                        style: new TextStyle(
                                                                          color: groupValuecourant == 2 ? Colors.blue : Colors.black,
                                                                        ))
                                                                  ],
                                                                ),
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            3,
                                                                        groupValue:
                                                                            groupValuecourant,
                                                                        onChanged:
                                                                            handleGroupValuecourant),
                                                                    new Text(
                                                                        'fort',
                                                                        style: new TextStyle(
                                                                          color: groupValuecourant == 3 ? Colors.blue : Colors.black,
                                                                        ))
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          new Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        10.0,
                                                                    vertical:
                                                                        10.0),
                                                            child: Row(
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          8.0),
                                                                  child:
                                                                      new Container(
                                                                    height: 10,
                                                                    width: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      border: Border.all(
                                                                          color:
                                                                              Colors.green),
                                                                    ),
                                                                  ),
                                                                ),
                                                                new Text(
                                                                    'visibilité',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .blue
                                                                          .shade900,
                                                                      fontSize:
                                                                          15,
                                                                    )),
                                                              ],
                                                            ),
                                                          ),
                                                          new Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 10),
                                                            child: Column(
                                                              children: [
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            0,
                                                                        groupValue:
                                                                            groupValuevis,
                                                                        onChanged:
                                                                            handleGroupValuevis),
                                                                    new Text(
                                                                      '0 à 10m',
                                                                        style: new TextStyle(
                                                                          color: groupValuevis == 0 ? Colors.blue : Colors.black,
                                                                        )
                                                                    )
                                                                  ],
                                                                ),
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            1,
                                                                        groupValue:
                                                                            groupValuevis,
                                                                        onChanged:
                                                                            handleGroupValuevis),
                                                                    new Text(
                                                                        '10m à 20m',
                                                                        style: new TextStyle(
                                                                          color: groupValuevis == 1 ? Colors.blue : Colors.black,
                                                                        ))
                                                                  ],
                                                                ),
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            2,
                                                                        groupValue:
                                                                            groupValuevis,
                                                                        onChanged:
                                                                            handleGroupValuevis),
                                                                    new Text(
                                                                        '20m et +',
                                                                        style: new TextStyle(
                                                                          color: groupValuevis == 2 ? Colors.blue : Colors.black,
                                                                        ))
                                                                  ],
                                                                ),
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            3,
                                                                        groupValue:
                                                                            groupValuevis,
                                                                        onChanged:
                                                                            handleGroupValuevis),
                                                                    new Text(
                                                                        'difficulté autre',
                                                                        style: new TextStyle(
                                                                          color: groupValuevis == 3 ? Colors.blue : Colors.black,
                                                                        ))
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          new Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        10.0,
                                                                    vertical:
                                                                        10.0),
                                                            child: Row(
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          8.0),
                                                                  child:
                                                                      new Container(
                                                                    height: 10,
                                                                    width: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      border: Border.all(
                                                                          color:
                                                                              Colors.green),
                                                                    ),
                                                                  ),
                                                                ),
                                                                new Text(
                                                                    'difficulté',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .blue
                                                                          .shade900,
                                                                      fontSize:
                                                                          15,
                                                                    )),
                                                              ],
                                                            ),
                                                          ),
                                                          new Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 10),
                                                            child: Column(
                                                              children: [
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            0,
                                                                        groupValue:
                                                                            groupValueDifficulte,
                                                                        onChanged:
                                                                            handleGroupValueDiff),
                                                                    new Text(
                                                                      'courant',
                                                                        style: new TextStyle(
                                                                          color: groupValueDifficulte == 0 ? Colors.blue : Colors.black,
                                                                        )
                                                                    )
                                                                  ],
                                                                ),
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            1,
                                                                        groupValue:
                                                                            groupValueDifficulte,
                                                                        onChanged:
                                                                            handleGroupValueDiff),
                                                                    new Text(
                                                                        'vague',
                                                                        style: new TextStyle(
                                                                          color: groupValueDifficulte == 1 ? Colors.blue : Colors.black,
                                                                        ))
                                                                  ],
                                                                ),
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            2,
                                                                        groupValue:
                                                                            groupValueDifficulte,
                                                                        onChanged:
                                                                            handleGroupValueDiff),
                                                                    new Text(
                                                                        'opensea',
                                                                        style: new TextStyle(
                                                                          color: groupValueDifficulte == 2 ? Colors.blue : Colors.black,
                                                                        ))
                                                                  ],
                                                                ),
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            3,
                                                                        groupValue:
                                                                            groupValueDifficulte,
                                                                        onChanged:
                                                                            handleGroupValueDiff),
                                                                    new Text(
                                                                        'zone protégée',
                                                                        style: new TextStyle(
                                                                          color: groupValueDifficulte == 3 ? Colors.blue : Colors.black,
                                                                        ))
                                                                  ],
                                                                ),
                                                                new Row(
                                                                  children: [
                                                                    new Radio(
                                                                        activeColor:
                                                                            Colors
                                                                                .blue,
                                                                        value:
                                                                            4,
                                                                        groupValue:
                                                                            groupValueDifficulte,
                                                                        onChanged:
                                                                            handleGroupValueDiff),
                                                                    new Text(
                                                                        'bouée',
                                                                        style: new TextStyle(
                                                                          color: groupValueDifficulte == 4 ? Colors.blue : Colors.black,
                                                                        ))
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ))
                                      ],
                                    ),
                                  ]),
                            ))),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                          // height: double.maxFinite,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                              // height: double.maxFinite,
                                              decoration: BoxDecoration(
                                                border: GradientBorder.uniform(
                                                    width: 3.0,
                                                    gradient: LinearGradient(
                                                        colors: <Color>[
                                                          Color(0xff59a5da),
                                                          Color(0xff60af6c)
                                                        ],
                                                        stops: [
                                                          0.3,
                                                          0.5
                                                        ])),
                                                borderRadius:
                                                BorderRadius.circular(30.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    height: 45,
                                                    width: double.infinity,
                                                    padding:
                                                    EdgeInsets.only(right: 2),
                                                    decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                            begin:
                                                            Alignment.topLeft,
                                                            end: Alignment
                                                                .bottomRight,
                                                            colors: <Color>[
                                                              Color(0xff59a5da),
                                                              Color(0xff60af6c),
                                                            ]),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                    constraints: BoxConstraints(
                                                      minHeight: 45,
                                                      minWidth: double.infinity,
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                            EdgeInsets.only(
                                                                left: 8.0)),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 5,
                                                                vertical: 5),
                                                            child: Text(
                                                              'Niveau',
                                                              style: new TextStyle(
                                                                fontSize: 20,
                                                                color: Colors.white,
                                                                decorationThickness:
                                                                3.0,
                                                                fontWeight:
                                                                FontWeight.w900,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                          child: GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                isStrechedType =
                                                                !isStrechedType;
                                                              });
                                                            },
                                                            child: Icon(
                                                              isStrechedType
                                                                  ? Icons
                                                                  .keyboard_arrow_up
                                                                  : Icons
                                                                  .keyboard_arrow_down,
                                                              color: Colors.white,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  ExpandedSection(
                                                      expand: isStrechedType,
                                                      height: 350,
                                                      child: Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 18.0),
                                                        child: Container(
                                                          color: Colors.white70,
                                                          child: Column(
                                                            // controller: _scrollController,
                                                            children: [
                                                              //controller: scrollController2,
                                                              ListTile(
                                                                leading: new Radio(
                                                                  value: 0,
                                                                  groupValue:
                                                                  groupValueNiveau,
                                                                  onChanged:
                                                                  handleGroupValueNiveau,
                                                                ),
                                                                title: Text(
                                                                  'débutant',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueNiveau == 0 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 1,
                                                                    groupValue:
                                                                    groupValueNiveau,
                                                                    onChanged:
                                                                    handleGroupValueNiveau),
                                                                title: Text(
                                                                  'open water (niveau 1)',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueNiveau == 1 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),

                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 2,
                                                                    groupValue:
                                                                    groupValueNiveau,
                                                                    onChanged:
                                                                    handleGroupValueNiveau),
                                                                title: Text(
                                                                  'avancé (niveau 2)',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueNiveau == 2 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 3,
                                                                    groupValue:
                                                                    groupValueNiveau,
                                                                    onChanged:
                                                                    handleGroupValueNiveau),
                                                                title: Text(
                                                                  'plus',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueNiveau == 3 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )),

                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ]),
                            ))),
                    new Padding(
                      padding: EdgeInsets.fromLTRB(20,10,20,0),
                      child: Container(
                        // height: double.infinity,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Container(
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
                                            children: [
                                              Container(
                                                height: 45,
                                                width: double.infinity,
                                                padding: EdgeInsets.only(right: 10),
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
                                                    Expanded(
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(
                                                            horizontal: 10, vertical: 10),
                                                        child: Text(
                                                          'Autonomie',
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
                                                      padding: const EdgeInsets.all(0.0),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            isStrechedAutonomie =
                                                            !isStrechedAutonomie;
                                                          });
                                                        },
                                                        child: Icon(
                                                          isStrechedAutonomie
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
                                              ExpandedSectionThreeRows(
                                                expand: isStrechedAutonomie,
                                                height: 100,
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                                  child: Container(
                                                    color: Colors.white70,
                                                    child: ListView(
                                                      padding: EdgeInsets.all(0),
                                                      shrinkWrap: true,
                                                      children: [
                                                        //controller: scrollController2,
                                                        Row(
                                                          children: [
                                                            Radio(
                                                                value: 0,
                                                                groupValue: groupValueAutonomie,
                                                                onChanged: handleGroupValueAutonomie),
                                                            new Text('seul', style: new TextStyle(color: groupValueAutonomie == 0 ? Colors.blue.shade900 : Colors.black,)),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Radio(
                                                                value: 1,
                                                                groupValue: groupValueAutonomie,
                                                                onChanged: handleGroupValueAutonomie),
                                                            new Text('guidée', style: new TextStyle(color: groupValueAutonomie == 1 ? Colors.blue.shade900 : Colors.black)),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Radio(
                                                                value: 2,
                                                                groupValue: groupValueAutonomie,
                                                                onChanged: handleGroupValueAutonomie),
                                                            new Text('autre', style: new TextStyle(color: groupValueAutonomie == 2 ? Colors.blue.shade900 : Colors.black,)),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: new Container(
                        decoration: new BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff59a5da),
                                Color(0xff60af6c),
                              ]),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 13),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: InputBorder.none,
                            hintText: 'Quand y plonger',
                            hintStyle: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                          // height: double.maxFinite,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                              // height: double.maxFinite,
                                              decoration: BoxDecoration(
                                                border: GradientBorder.uniform(
                                                    width: 3.0,
                                                    gradient: LinearGradient(
                                                        colors: <Color>[
                                                          Color(0xff59a5da),
                                                          Color(0xff60af6c)
                                                        ],
                                                        stops: [
                                                          0.3,
                                                          0.5
                                                        ])),
                                                borderRadius:
                                                BorderRadius.circular(30.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    height: 45,
                                                    width: double.infinity,
                                                    padding:
                                                    EdgeInsets.only(right: 2),
                                                    decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                            begin:
                                                            Alignment.topLeft,
                                                            end: Alignment
                                                                .bottomRight,
                                                            colors: <Color>[
                                                              Color(0xff59a5da),
                                                              Color(0xff60af6c),
                                                            ]),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                    constraints: BoxConstraints(
                                                      minHeight: 45,
                                                      minWidth: double.infinity,
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                            EdgeInsets.only(
                                                                left: 8.0)),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 5,
                                                                vertical: 5),
                                                            child: Text(
                                                              'Vie Marine',
                                                              style: new TextStyle(
                                                                fontSize: 20,
                                                                color: Colors.white,
                                                                decorationThickness:
                                                                3.0,
                                                                fontWeight:
                                                                FontWeight.w900,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                          child: GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                isStrechedVM =
                                                                !isStrechedVM;
                                                              });
                                                            },
                                                            child: Icon(
                                                              isStrechedVM
                                                                  ? Icons
                                                                  .keyboard_arrow_up
                                                                  : Icons
                                                                  .keyboard_arrow_down,
                                                              color: Colors.white,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  ExpandedSectionVM(
                                                      expand: isStrechedVM,
                                                      height: 450,
                                                      child: Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 18.0),
                                                        child: Container(
                                                          color: Colors.white70,
                                                          child: Column(
                                                            // controller: _scrollController,
                                                            children: [
                                                              //controller: scrollController2,
                                                              ListTile(
                                                                leading: new Radio(
                                                                  value: 0,
                                                                  groupValue:
                                                                  groupValueVM,
                                                                  onChanged:
                                                                  handleGroupValueVM,
                                                                ),
                                                                title: Text(
                                                                  'Requin',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM == 0 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 1,
                                                                    groupValue:
                                                                    groupValueVM,
                                                                    onChanged:
                                                                    handleGroupValueVM),
                                                                title: Text(
                                                                  'mammifère',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM == 1 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 2,
                                                                    groupValue:
                                                                    groupValueVM,
                                                                    onChanged:
                                                                    handleGroupValueVM),
                                                                title: Text(
                                                                  'reptile & anguille',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM == 2 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 3,
                                                                    groupValue:
                                                                    groupValueVM,
                                                                    onChanged:
                                                                    handleGroupValueVM),
                                                                title: Text(
                                                                  'crustacé',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM == 3 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 4,
                                                                    groupValue:
                                                                    groupValueVM,
                                                                    onChanged:
                                                                    handleGroupValueVM),
                                                                title: Text(
                                                                  'raie',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM == 4 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 5,
                                                                    groupValue:
                                                                    groupValueVM,
                                                                    onChanged:
                                                                    handleGroupValueVM),
                                                                title: Text(
                                                                  'limace & gastropode',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM == 5 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 6,
                                                                    groupValue:
                                                                    groupValueVM,
                                                                    onChanged:
                                                                    handleGroupValueVM),
                                                                title: Text(
                                                                  'céphalopode & concombre',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM == 6 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 7,
                                                                    groupValue:
                                                                    groupValueVM,
                                                                    onChanged:
                                                                    handleGroupValueVM),
                                                                title: Text(
                                                                  'corail/bivalve/oursin/étoile de mer',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM == 7 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 8,
                                                                    groupValue:
                                                                    groupValueVM,
                                                                    onChanged:
                                                                    handleGroupValueVM),
                                                                title: Text(
                                                                  'poisson pélagique',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM == 8 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 9,
                                                                    groupValue:
                                                                    groupValueVM,
                                                                    onChanged:
                                                                    handleGroupValueVM),
                                                                title: Text(
                                                                  'poisson de récif',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM == 9 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile (
                                                                leading: new Radio(
                                                                    value: 10,
                                                                    groupValue:
                                                                    groupValueVM,
                                                                    onChanged:
                                                                    handleGroupValueVM),
                                                                title: Text(
                                                                  'poisson de fond',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM == 10 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Radio(
                                                                      value: 11,
                                                                      groupValue:
                                                                      groupValueVM,
                                                                      onChanged:
                                                                      handleGroupValueVM),
                                                                  new Text(
                                                                      'autres:',
                                                                      style:
                                                                      _textStyle()),
                                                                  Expanded(
                                                                      child:
                                                                      new TextField()),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ]),
                            ))),
                    new Padding(
                          padding: EdgeInsets.fromLTRB(20,10,20,20),
                        child: Container(
                          color: Colors.white70,
                          child: new Row(
                              children: [
                          new InkWell(
                                child: new Icon(Icons.add_a_photo,color: Colors.green,size: 24)
                          ),
                          new Text('  + Photo si abonné premium')
                      ]
                      ),
                        )
                    ),
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: ListTile(
                        title: new Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: GradientBorder.uniform(
                                width: 3.0,
                                gradient: LinearGradient(colors: <Color>[
                                  Color(0xff59a5da),
                                  Color(0xff60af6c)
                                ], stops: [
                                  0.3,
                                  0.5
                                ])),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: new Center(
                            child: new Text(
                              'ENREGISTER',
                              style: new TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                decorationThickness: 3.0,
                                color: Colors.blue.shade900,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currentIndexRegister = 0;
                          });
                        },
                      ),
                    ),
                    
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                new Column(
                  children: [
                    new Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: new Container(
                        height: 100,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: new AssetImage('images/enregisterbg.png'),
                              fit: BoxFit.fitHeight),
                        ),
                        child: new Text(
                          'Enregistrer un centre',
                          style: new TextStyle(
                              fontSize: 20,
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    new SizedBox(
                      height: 14,
                    ),
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(25, 20, 25, 25),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(30),
                        child: ListTile(
                          title: new Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: new Center(
                              child: new Text(
                                "Activer GPS ou recherche sur cart",
                                style: new TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  decorationThickness: 3.0,
                                  color: Colors.blue.shade900,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: new Container(
                        decoration: new BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff59a5da),
                                Color(0xff60af6c),
                              ]),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 13),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: InputBorder.none,
                            hintText: 'NOM',
                            hintStyle: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                          // height: double.maxFinite,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                              // height: double.maxFinite,
                                              decoration: BoxDecoration(
                                                border: GradientBorder.uniform(
                                                    width: 3.0,
                                                    gradient: LinearGradient(
                                                        colors: <Color>[
                                                          Color(0xff59a5da),
                                                          Color(0xff60af6c)
                                                        ],
                                                        stops: [
                                                          0.3,
                                                          0.5
                                                        ])),
                                                borderRadius:
                                                BorderRadius.circular(30.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    height: 45,
                                                    width: double.infinity,
                                                    padding:
                                                    EdgeInsets.only(right: 2),
                                                    decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                            begin:
                                                            Alignment.topLeft,
                                                            end: Alignment
                                                                .bottomRight,
                                                            colors: <Color>[
                                                              Color(0xff59a5da),
                                                              Color(0xff60af6c),
                                                            ]),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                    constraints: BoxConstraints(
                                                      minHeight: 45,
                                                      minWidth: double.infinity,
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                            EdgeInsets.only(
                                                                left: 8.0)),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 5,
                                                                vertical: 5),
                                                            child: Text(
                                                              'Lieu',
                                                              style: new TextStyle(
                                                                fontSize: 20,
                                                                color: Colors.white,
                                                                decorationThickness:
                                                                3.0,
                                                                fontWeight:
                                                                FontWeight.w900,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                          child: GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                isStrechedPay =
                                                                !isStrechedPay;
                                                              });
                                                            },
                                                            child: Icon(
                                                              isStrechedPay
                                                                  ? Icons
                                                                  .keyboard_arrow_up
                                                                  : Icons
                                                                  .keyboard_arrow_down,
                                                              color: Colors.white,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  ExpandedSectionPays(
                                                      expand: isStrechedPay,
                                                      height: 350,
                                                      child: Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 10.0),
                                                        child: Container(
                                                          color: Colors.white70,
                                                          child: Column(
                                                            // controller: _scrollController,
                                                            children: [
                                                              //controller: scrollController2,
                                                              ListTile(
                                                                leading: new Radio(
                                                                  value: 0,
                                                                  groupValue:
                                                                  groupValue0,
                                                                  onChanged:
                                                                  handleGroupValue0,
                                                                ),
                                                                title: Text(
                                                                  'Asia',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValue0 == 0 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 1,
                                                                    groupValue:
                                                                    groupValue0,
                                                                    onChanged:
                                                                    handleGroupValue0),
                                                                title: Text(
                                                                  'Europe',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValue0 == 1 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),

                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 2,
                                                                    groupValue:
                                                                    groupValue0,
                                                                    onChanged:
                                                                    handleGroupValue0),
                                                                title: Text(
                                                                  'Amerique du N',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValue0 == 2 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 3,
                                                                    groupValue:
                                                                    groupValue0,
                                                                    onChanged:
                                                                    handleGroupValue0),
                                                                title: Text(
                                                                  'America de S',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValue0 == 3 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 4,
                                                                    groupValue:
                                                                    groupValue0,
                                                                    onChanged:
                                                                    handleGroupValue0),
                                                                title: Text(
                                                                  'Oceania',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValue0 == 4 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 5,
                                                                    groupValue:
                                                                    groupValue0,
                                                                    onChanged:
                                                                    handleGroupValue0),
                                                                title: Text(
                                                                  'Afrique',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValue0 == 5 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ]),
                            ))),
                    
                    new Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                          // height: double.maxFinite,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                              // height: double.maxFinite,
                                              decoration: BoxDecoration(
                                                border: GradientBorder.uniform(
                                                    width: 3.0,
                                                    gradient: LinearGradient(
                                                        colors: <Color>[
                                                          Color(0xff59a5da),
                                                          Color(0xff60af6c)
                                                        ],
                                                        stops: [
                                                          0.3,
                                                          0.5
                                                        ])),
                                                borderRadius:
                                                BorderRadius.circular(30.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    height: 55,
                                                    width: double.infinity,
                                                    padding:
                                                    EdgeInsets.only(right: 2),
                                                    decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                            begin:
                                                            Alignment.topLeft,
                                                            end: Alignment
                                                                .bottomRight,
                                                            colors: <Color>[
                                                              Color(0xff59a5da),
                                                              Color(0xff60af6c),
                                                            ]),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                    constraints: BoxConstraints(
                                                      minHeight: 45,
                                                      minWidth: double.infinity,
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                            EdgeInsets.only(
                                                                left: 8.0)),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 5,
                                                                vertical: 5),
                                                            child: Text(
                                                              'Type de plongée incontournable',
                                                              style: new TextStyle(
                                                                fontSize: 20,
                                                                color: Colors.white,
                                                                decorationThickness:
                                                                3.0,
                                                                fontWeight:
                                                                FontWeight.w900,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                          child: GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                isStrechedACocher =
                                                                !isStrechedACocher;
                                                              });
                                                            },
                                                            child: Icon(
                                                              isStrechedACocher
                                                                  ? Icons
                                                                  .keyboard_arrow_up
                                                                  : Icons
                                                                  .keyboard_arrow_down,
                                                              color: Colors.white,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  ExpandedSectionIncournatable(
                                                      expand: isStrechedIncournatable,
                                                      height: 450,
                                                      child: Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 18.0),
                                                        child: Container(
                                                          color: Colors.white70,
                                                          child: Column(
                                                            // controller: _scrollController,
                                                            children: [
                                                              //controller: scrollController2,
                                                              ListTile(
                                                                leading: new Radio(
                                                                  value: 0,
                                                                  groupValue:
                                                                  groupValueInc,
                                                                  onChanged:
                                                                  handleGroupValueInc,
                                                                ),
                                                                title: Text(
                                                                  'boat',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueInc == 0 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 1,
                                                                    groupValue:
                                                                    groupValueInc,
                                                                    onChanged:
                                                                    handleGroupValueInc),
                                                                title: Text(
                                                                  'shore',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueInc == 1 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 2,
                                                                    groupValue:
                                                                    groupValueInc,
                                                                    onChanged:
                                                                    handleGroupValueInc),
                                                                title: Text(
                                                                  'wreck',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueInc == 2 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 3,
                                                                    groupValue:
                                                                    groupValueInc,
                                                                    onChanged:
                                                                    handleGroupValueInc),
                                                                title: Text(
                                                                  'ice',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueInc == 3 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 4,
                                                                    groupValue:
                                                                    groupValueInc,
                                                                    onChanged:
                                                                    handleGroupValueInc),
                                                                title: Text(
                                                                  'drift',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueInc == 4 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),

                                                              Row(
                                                                children: [
                                                                  Radio(
                                                                      value: 5,
                                                                      groupValue:
                                                                      groupValueInc,
                                                                      onChanged:
                                                                      handleGroupValueInc),
                                                                  new Text(
                                                                      'autres:',
                                                                      style:
                                                                      _textStyle()),
                                                                  Expanded(
                                                                      child:
                                                                      new TextField()),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )),

                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ]),
                            ))),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                          // height: double.maxFinite,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                              // height: double.maxFinite,
                                              decoration: BoxDecoration(
                                                border: GradientBorder.uniform(
                                                    width: 3.0,
                                                    gradient: LinearGradient(
                                                        colors: <Color>[
                                                          Color(0xff59a5da),
                                                          Color(0xff60af6c)
                                                        ],
                                                        stops: [
                                                          0.3,
                                                          0.5
                                                        ])),
                                                borderRadius:
                                                BorderRadius.circular(30.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    height: 45,
                                                    width: double.infinity,
                                                    padding:
                                                    EdgeInsets.only(right: 2),
                                                    decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                            begin:
                                                            Alignment.topLeft,
                                                            end: Alignment
                                                                .bottomRight,
                                                            colors: <Color>[
                                                              Color(0xff59a5da),
                                                              Color(0xff60af6c),
                                                            ]),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                    constraints: BoxConstraints(
                                                      minHeight: 45,
                                                      minWidth: double.infinity,
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                            EdgeInsets.only(
                                                                left: 8.0)),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 5,
                                                                vertical: 5),
                                                            child: Text(
                                                              'Niveau acceptés',
                                                              style: new TextStyle(
                                                                fontSize: 20,
                                                                color: Colors.white,
                                                                decorationThickness:
                                                                3.0,
                                                                fontWeight:
                                                                FontWeight.w900,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                          child: GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                isStrechedNivAcc =
                                                                !isStrechedNivAcc;
                                                              });
                                                            },
                                                            child: Icon(
                                                              isStrechedNivAcc
                                                                  ? Icons
                                                                  .keyboard_arrow_up
                                                                  : Icons
                                                                  .keyboard_arrow_down,
                                                              color: Colors.white,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  ExpandedSection(
                                                      expand: isStrechedNivAcc,
                                                      height: 350,
                                                      child: Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 18.0),
                                                        child: Container(
                                                          color: Colors.white70,
                                                          child: Column(
                                                            // controller: _scrollController,
                                                            children: [
                                                              //controller: scrollController2,
                                                              ListTile(
                                                                leading: new Radio(
                                                                  value: 0,
                                                                  groupValue:
                                                                  groupValueNiveauAcc,
                                                                  onChanged:
                                                                  handleGroupValueNiveauAcc,
                                                                ),
                                                                title: Text(
                                                                  'snorkel',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueNiveauAcc == 0 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 1,
                                                                    groupValue:
                                                                    groupValueNiveauAcc,
                                                                    onChanged:
                                                                    handleGroupValueNiveauAcc),
                                                                title: Text(
                                                                  'débutant',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueNiveauAcc == 1 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),

                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 2,
                                                                    groupValue:
                                                                    groupValueNiveauAcc,
                                                                    onChanged:
                                                                    handleGroupValueNiveau),
                                                                title: Text(
                                                                  'plongeurs expérimentés',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueNiveauAcc == 2 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),

                                                            ],
                                                          ),
                                                        ),
                                                      )),

                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ]),
                            ))),
                    new Padding(
                      padding: EdgeInsets.fromLTRB(20,10,20,0),
                      child: Container(
                        // height: double.infinity,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Container(
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
                                            children: [
                                              Container(
                                                height: 45,
                                                width: double.infinity,
                                                padding: EdgeInsets.only(right: 10),
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
                                                    Expanded(
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(
                                                            horizontal: 10, vertical: 10),
                                                        child: Text(
                                                          'Activités proposées',
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
                                                      padding: const EdgeInsets.all(0.0),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            isStrechedActivities =
                                                            !isStrechedActivities;
                                                          });
                                                        },
                                                        child: Icon(
                                                          isStrechedActivities
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
                                              ExpandedSectionThreeRows(
                                                expand: isStrechedActivities,
                                                height: 100,
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                                  child: Container(
                                                    color: Colors.white70,
                                                    child: ListView(
                                                      padding: EdgeInsets.all(0),
                                                      shrinkWrap: true,
                                                      children: [
                                                        //controller: scrollController2,
                                                        Row(
                                                          children: [
                                                            Radio(
                                                                value: 0,
                                                                groupValue: groupValueAutonomie,
                                                                onChanged: handleGroupValueAutonomie),
                                                            new Text('cours plongée', style: new TextStyle(color: groupValueAutonomie == 0 ? Colors.blue.shade900 : Colors.black,)),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Radio(
                                                                value: 1,
                                                                groupValue: groupValueActivities,
                                                                onChanged: handleGroupValueActivities),
                                                            new Text('sortie bateau', style: new TextStyle(color: groupValueAutonomie == 1 ? Colors.blue.shade900 : Colors.black)),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Radio(
                                                                value: 2,
                                                                groupValue: groupValueActivities,
                                                                onChanged: handleGroupValueActivities),
                                                            new Text('location équipement', style: new TextStyle(color: groupValueAutonomie == 2 ? Colors.blue.shade900 : Colors.black,)),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: new Container(
                        decoration: new BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff59a5da),
                                Color(0xff60af6c),
                              ]),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: new TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 13),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: InputBorder.none,
                            hintText: 'Période pour y venir',
                            hintStyle: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                          // height: double.maxFinite,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                              // height: double.maxFinite,
                                              decoration: BoxDecoration(
                                                border: GradientBorder.uniform(
                                                    width: 3.0,
                                                    gradient: LinearGradient(
                                                        colors: <Color>[
                                                          Color(0xff59a5da),
                                                          Color(0xff60af6c)
                                                        ],
                                                        stops: [
                                                          0.3,
                                                          0.5
                                                        ])),
                                                borderRadius:
                                                BorderRadius.circular(30.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    height: 45,
                                                    width: double.infinity,
                                                    padding:
                                                    EdgeInsets.only(right: 2),
                                                    decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                            begin:
                                                            Alignment.topLeft,
                                                            end: Alignment
                                                                .bottomRight,
                                                            colors: <Color>[
                                                              Color(0xff59a5da),
                                                              Color(0xff60af6c),
                                                            ]),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                    constraints: BoxConstraints(
                                                      minHeight: 45,
                                                      minWidth: double.infinity,
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                            EdgeInsets.only(
                                                                left: 8.0)),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 5,
                                                                vertical: 5),
                                                            child: Text(
                                                              'Vie Marine',
                                                              style: new TextStyle(
                                                                fontSize: 20,
                                                                color: Colors.white,
                                                                decorationThickness:
                                                                3.0,
                                                                fontWeight:
                                                                FontWeight.w900,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                          child: GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                isStrechedVM2 =
                                                                !isStrechedVM2;
                                                              });
                                                            },
                                                            child: Icon(
                                                              isStrechedVM2
                                                                  ? Icons
                                                                  .keyboard_arrow_up
                                                                  : Icons
                                                                  .keyboard_arrow_down,
                                                              color: Colors.white,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  ExpandedSectionVM(
                                                      expand: isStrechedVM2,
                                                      height: 450,
                                                      child: Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 18.0),
                                                        child: Container(
                                                          color: Colors.white70,
                                                          child: Column(
                                                            // controller: _scrollController,
                                                            children: [
                                                              //controller: scrollController2,
                                                              ListTile(
                                                                leading: new Radio(
                                                                  value: 0,
                                                                  groupValue:
                                                                  groupValueVM2,
                                                                  onChanged:
                                                                  handleGroupValueVM2,
                                                                ),
                                                                title: Text(
                                                                  'Requin',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM2 == 0 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 1,
                                                                    groupValue:
                                                                    groupValueVM2,
                                                                    onChanged:
                                                                    handleGroupValueVM2),
                                                                title: Text(
                                                                  'mammifère',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM2 == 1 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 2,
                                                                    groupValue:
                                                                    groupValueVM2,
                                                                    onChanged:
                                                                    handleGroupValueVM2),
                                                                title: Text(
                                                                  'reptile & anguille',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM2 == 2 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 3,
                                                                    groupValue:
                                                                    groupValueVM2,
                                                                    onChanged:
                                                                    handleGroupValueVM2),
                                                                title: Text(
                                                                  'crustacé',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM2 == 3 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 4,
                                                                    groupValue:
                                                                    groupValueVM2,
                                                                    onChanged:
                                                                    handleGroupValueVM2),
                                                                title: Text(
                                                                  'raie',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM2 == 4 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 5,
                                                                    groupValue:
                                                                    groupValueVM2,
                                                                    onChanged:
                                                                    handleGroupValueVM2),
                                                                title: Text(
                                                                  'limace & gastropode',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM2 == 5 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 6,
                                                                    groupValue:
                                                                    groupValueVM2,
                                                                    onChanged:
                                                                    handleGroupValueVM2),
                                                                title: Text(
                                                                  'céphalopode & concombre',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM2 == 6 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 7,
                                                                    groupValue:
                                                                    groupValueVM2,
                                                                    onChanged:
                                                                    handleGroupValueVM2),
                                                                title: Text(
                                                                  'corail/bivalve/oursin/étoile de mer',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM2 == 7 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 8,
                                                                    groupValue:
                                                                    groupValueVM2,
                                                                    onChanged:
                                                                    handleGroupValueVM),
                                                                title: Text(
                                                                  'poisson pélagique',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM2 == 8 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile(
                                                                leading: new Radio(
                                                                    value: 9,
                                                                    groupValue:
                                                                    groupValueVM2,
                                                                    onChanged:
                                                                    handleGroupValueVM2),
                                                                title: Text(
                                                                  'poisson de récif',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM2 == 9 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              ListTile (
                                                                leading: new Radio(
                                                                    value: 10,
                                                                    groupValue:
                                                                    groupValueVM2,
                                                                    onChanged:
                                                                    handleGroupValueVM2),
                                                                title: Text(
                                                                  'poisson de fond',
                                                                  style:
                                                                  new TextStyle(
                                                                    color: groupValueVM2 == 10 ? Colors.blue.shade900 : Colors.black,
                                                                  ),
                                                                ),
                                                                onTap: () {},
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Radio(
                                                                      value: 11,
                                                                      groupValue:
                                                                      groupValueVM2,
                                                                      onChanged:
                                                                      handleGroupValueVM2),
                                                                  new Text(
                                                                      'autres:',
                                                                      style:
                                                                      _textStyle()),
                                                                  Expanded(
                                                                      child:
                                                                      new TextField()),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ]),
                            ))),
                    new Padding(
                        padding: EdgeInsets.fromLTRB(20,10,20,20),
                        child: Container(
                          color: Colors.white70,
                          child: new Row(
                              children: [
                                new InkWell(
                                    child: new Icon(Icons.add_a_photo,color: Colors.green,size: 24)
                                ),
                                new Text('  + Photo si abonné premium')
                              ]
                          ),
                        )
                    ),
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: ListTile(
                        title: new Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: GradientBorder.uniform(
                                width: 3.0,
                                gradient: LinearGradient(colors: <Color>[
                                  Color(0xff59a5da),
                                  Color(0xff60af6c)
                                ], stops: [
                                  0.3,
                                  0.5
                                ])),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: new Center(
                            child: new Text(
                              'ENREGISTER',
                              style: new TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                decorationThickness: 3.0,
                                color: Colors.blue.shade900,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currentIndexRegister = 0;
                          });
                        },
                      ),
                    ),

                  ],
                ),
              ],
            ),
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
            icon: ImageIcon(new AssetImage('images/ikon1.png'), size: 30.0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(new AssetImage('images/ikon2.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(new AssetImage('images/communaute_icon.png')),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
            Navigator.of(context).pushNamed(pageIndex());
          });
        },
        // onTap: _onItemTapped,
      ),
    );
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
