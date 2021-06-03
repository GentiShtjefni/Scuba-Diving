import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tools/ExpandedListAnimationWidget.dart';
import '../tools/borderradius.dart';

class DropDown1 extends StatefulWidget {
  @override
  _DropDown1State createState() => _DropDown1State();
}

class _DropDown1State extends State<DropDown1> {
  // final ScrollController _scrollController = ScrollController();
  bool isStrechedDropDown = false;
  int groupValue1;
  String ddValue1 = 'select';
  String ddValue2 = 'select';
  String ddValue3 = 'select';
  String ddValue4 = 'select';

  void handleGroupValue1(int value) {
    setState(() {
      groupValue1 = value;
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
                          child: Column(

                            // controller: _scrollController,
                            children: [
                              //controller: scrollController2,
                              ListTile(
                                leading: Radio(
                                  value: 0,
                                  groupValue: groupValue1,
                                  onChanged: handleGroupValue1,
                                ),
                                title: Text('periode pour plonger',
                                style: TextStyle(
                                  fontSize: 14
                                )),
                                trailing: DropdownButton(
                                  dropdownColor: Colors.grey.shade300,
                                  value: ddValue1,
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  elevation: 10,
                                  onChanged: (String newValue) {
                                    setState(() {
                                      ddValue1 = newValue;
                                    });
                                  },
                                  items: [
                                    'select',
                                    'janvier ',
                                    'février',
                                    'mars',
                                    'avril',
                                    'mai',
                                    'juin',
                                    'juillet',
                                    'aout',
                                    'septembre',
                                    'octobre',
                                    'novembre',
                                    'décembre',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Divider(color: Colors.greenAccent),
                              ),
                              ListTile(
                                leading: Radio(
                                  value: 1,
                                  groupValue: groupValue1,
                                  onChanged: handleGroupValue1,
                                ),
                                title: Text('vie marine'),
                                trailing: DropdownButton(
                                  dropdownColor: Colors.grey.shade300,
                                  value: ddValue2,
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  elevation: 10,
                                  onChanged: (String newValue) {
                                    setState(() {
                                      ddValue2 = newValue;
                                    });
                                  },
                                  items: [
                                    'select',
                                    'janvier ',
                                    'février',
                                    'mars',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Divider(color: Colors.greenAccent),
                              ),
                              ListTile(
                                leading: Radio(
                                  value: 2,
                                  groupValue: groupValue1,
                                  onChanged: handleGroupValue1,
                                ),
                                title: Text('type de plonge'),
                                trailing: DropdownButton(
                                  dropdownColor: Colors.grey.shade300,
                                  value: ddValue3,
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  elevation: 10,
                                  onChanged: (String newValue) {
                                    setState(() {
                                      ddValue3 = newValue;
                                    });
                                  },
                                  items: [
                                    'select',
                                    'janvier ',
                                    'février',
                                    'mars',
                                    'avril',
                                    'mai',
                                    'juin',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Divider(color: Colors.greenAccent),
                              ),
                              ListTile(
                                leading: Radio(
                                  value: 3,
                                  groupValue: groupValue1,
                                  onChanged: handleGroupValue1,
                                ),
                                title: Text('Topographie'),
                                trailing: DropdownButton(
                                  dropdownColor: Colors.grey.shade300,
                                  value: ddValue4,
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  elevation: 10,
                                  onChanged: (String newValue) {
                                    setState(() {
                                      ddValue4 = newValue;
                                    });
                                  },
                                  items: [
                                    'select',
                                    'janvier ',
                                    'février',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
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
