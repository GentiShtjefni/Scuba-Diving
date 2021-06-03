import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/ExpandedConditions2.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

class ConditionsDropDown extends StatefulWidget {
  @override
  _ConditionsDropDownState createState() => _ConditionsDropDownState();
}

class _ConditionsDropDownState extends State<ConditionsDropDown> {
  bool isStrechedConditions = false;
  int groupValueConditions0;
  String ddValueconditions1 = 'select';
  String ddValueconditions2 = 'select';
  String ddValueconditions3 = 'select';


  void handleGroupValue0(int value1) {
    setState(() {
      groupValueConditions0 = value1;
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
                          ExpandedSectionConditions2(
                              expand: isStrechedConditions,
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal:3.0),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  color: Colors.white70,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    // controller: _scrollController,
                                    children: [
                                      new Row(
                                        children: [
                                          new Radio(
                                            value: 0,
                                            groupValue: groupValueConditions0,
                                            onChanged: handleGroupValue0,
                                          ),
                                          new Expanded(
                                            child: Text('température  eau',
                                                style: _textStyle()),
                                          ),
                                          new Padding(
                                            padding: const EdgeInsets.only(right:5.0),
                                            child: DropdownButton(

                                              dropdownColor: Colors.grey.shade300,
                                              value: ddValueconditions1,
                                              icon: Icon(Icons.keyboard_arrow_down),
                                              elevation: 10,
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                              onChanged: (String newValue) {
                                                setState(() {
                                                  ddValueconditions1 = newValue;
                                                });
                                              },
                                              items: [
                                                'select',
                                                'entre 0' +  '\u2103' + ' et 10' + '\u2103',
                                                'entre 11' +  '\u2103' + ' et 20' + '\u2103',
                                                '21' +  '\u2103' + ' et plus',

                                              ].map<DropdownMenuItem<String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<String>(
                                                      value: value,
                                                      child: Text(value,
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 2,),
                                                    );
                                                  }).toList(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      new Row(
                                        children: [
                                          new Radio(
                                              value: 1,
                                              groupValue: groupValueConditions0,
                                              onChanged: handleGroupValue0),
                                          new Expanded(
                                              child: Text('courant',
                                              style: _textStyle(),),
                                          ),
                                          new Padding(
                                            padding: const EdgeInsets.only(right:5.0),
                                            child: ButtonTheme(
                                              alignedDropdown: true,
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddValueconditions2,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddValueconditions2 = newValue;
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  'inexistan',
                                                  'faible',
                                                  'modéré',
                                                  'fort'
                                                ].map<DropdownMenuItem<String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value,
                                                          overflow: TextOverflow.ellipsis,
                                                          maxLines: 2,),
                                                      );
                                                    }).toList(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      new Row(
                                        children: [
                                          new Radio(
                                              value: 2,
                                              groupValue: groupValueConditions0,
                                              onChanged: handleGroupValue0),
                                          new Expanded(
                                            child: Text('visibilité',
                                            style: _textStyle(),),
                                          ),
                                          new Padding(
                                            padding: const EdgeInsets.only(right:5.0),
                                            child: ButtonTheme(
                                              alignedDropdown: true,
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddValueconditions3,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddValueconditions3 = newValue;
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  '0 à 10m',
                                                  '10m à 20m',
                                                  '20m et +',
                                                  'diculté autre'
                                                ].map<DropdownMenuItem<String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value,
                                                          overflow: TextOverflow.ellipsis,
                                                          maxLines: 2,),
                                                      );
                                                    }).toList(),
                                              ),
                                            ),
                                          ),
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
            )));
  }
}
