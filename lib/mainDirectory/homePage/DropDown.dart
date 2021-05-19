import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tools/ExpandedListAnimationFourRows.dart';
import '../tools/ExpandedListAnimationWidget.dart';
import '../tools/ExtandedListAnimationOneRow.dart';
import '../tools/borderradius.dart';

class DropDown1 extends StatefulWidget {
  @override
  _DropDown1State createState() => _DropDown1State();
}

class _DropDown1State extends State<DropDown1> {
  // final ScrollController _scrollController = ScrollController();
  bool isStrechedDropDown = false;
  bool isStreched1 = false;
  bool isStreched2 = false;
  bool isStreched3 = false;
  bool isStreched4 = false;
  int groupValue1;
  int groupValue2;
  int groupValue3;
  int groupValue4;

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isStrechedDropDown = !isStrechedDropDown;
                                  });
                                },
                                child: Icon(
                                  isStrechedDropDown ? Icons.remove : Icons.add,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: Text(
                                  'de criteres',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ExpandedSection(
                        expand: isStrechedDropDown,
                        height: double.infinity,
                        child: SizedBox.expand(
                          child: ListView(
                            padding: EdgeInsets.all(0),
                            shrinkWrap: true,
                            // controller: _scrollController,
                            children: [
                              //controller: scrollController2,
                              ListTile(
                                leading: Icon(isStreched1
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down),
                                title: Text('periode pour plonger'),
                                onTap: () {
                                  setState(() {
                                    isStreched1 = !isStreched1;
                                  });
                                },
                              ),
                              ExpandedSectionFourRows(
                                expand: isStreched1,
                                height: 100,
                                child: ListView(
                                  children: [
                                    Row(
                                      children: [
                                        new Radio(
                                          value: 0,
                                          groupValue: groupValue1,
                                          onChanged: handleGroupValue1,
                                        ),
                                        new Text('janvier'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 1,
                                          groupValue: groupValue1,
                                          onChanged: handleGroupValue1,
                                        ),
                                        new Text('février'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 2,
                                          groupValue: groupValue1,
                                          onChanged: handleGroupValue1,
                                        ),
                                        new Text('mars'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        new Radio(
                                          value: 3,
                                          groupValue: groupValue1,
                                          onChanged: handleGroupValue1,
                                        ),
                                        new Text('avril'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 4,
                                          groupValue: groupValue1,
                                          onChanged: handleGroupValue1,
                                        ),
                                        new Text('mai'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 5,
                                          groupValue: groupValue1,
                                          onChanged: handleGroupValue1,
                                        ),
                                        new Text('juin'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        new Radio(
                                          value: 6,
                                          groupValue: groupValue1,
                                          onChanged: handleGroupValue1,
                                        ),
                                        new Text('juillet'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 7,
                                          groupValue: groupValue1,
                                          onChanged: handleGroupValue1,
                                        ),
                                        new Text('aout'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 8,
                                          groupValue: groupValue1,
                                          onChanged: handleGroupValue1,
                                        ),
                                        new Text('septembre'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        new Radio(
                                          value: 9,
                                          groupValue: groupValue1,
                                          onChanged: handleGroupValue1,
                                        ),
                                        new Text('octobre'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 10,
                                          groupValue: groupValue1,
                                          onChanged: handleGroupValue1,
                                        ),
                                        new Text('novembre'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 11,
                                          groupValue: groupValue1,
                                          onChanged: handleGroupValue1,
                                        ),
                                        new Text('décembre'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              ListTile(
                                leading: Icon(isStreched2
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down),
                                title: Text('Vie marine'),
                                onTap: () {
                                  setState(() {
                                    isStreched2 = !isStreched2;
                                  });
                                },
                              ),
                              ExpandedSectionOneRow(
                                expand: isStreched2,
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
                                        new Text('first'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 1,
                                          groupValue: groupValue2,
                                          onChanged: handleGroupValue2,
                                        ),
                                        new Text('second'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 2,
                                          groupValue: groupValue2,
                                          onChanged: handleGroupValue2,
                                        ),
                                        new Text('mars'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              ListTile(
                                leading: Icon(isStreched3
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down),
                                title: Text('Type de plongee'),
                                onTap: () {
                                  setState(() {
                                    isStreched3 = !isStreched3;
                                  });
                                },
                              ),
                              ExpandedSectionOneRow(
                                expand: isStreched3,
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
                                        new Text('first'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 1,
                                          groupValue: groupValue3,
                                          onChanged: handleGroupValue3,
                                        ),
                                        new Text('second'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 2,
                                          groupValue: groupValue3,
                                          onChanged: handleGroupValue3,
                                        ),
                                        new Text('mars'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              ListTile(
                                leading: Icon(isStreched4
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down),
                                title: Text('Topographie'),
                                onTap: () {
                                  setState(() {
                                    isStreched4 = !isStreched4;
                                  });
                                },
                              ),
                              ExpandedSectionOneRow(
                                expand: isStreched4,
                                height: 100,
                                child: ListView(
                                  children: [
                                    Row(
                                      children: [
                                        new Radio(
                                          value: 0,
                                          groupValue: groupValue4,
                                          onChanged: handleGroupValue4,
                                        ),
                                        new Text('first'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 1,
                                          groupValue: groupValue3,
                                          onChanged: handleGroupValue4,
                                        ),
                                        new Text('second'),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.0)),
                                        new Radio(
                                          value: 2,
                                          groupValue: groupValue4,
                                          onChanged: handleGroupValue4,
                                        ),
                                        new Text('mars'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
      ),
    ));
  }
}
