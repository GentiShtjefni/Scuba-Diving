import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/ExpandedListACocher.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

class TypeDePlonge extends StatefulWidget {
  const TypeDePlonge({Key key}) : super(key: key);

  @override
  _TypeDePlongeState createState() => _TypeDePlongeState();
}

class _TypeDePlongeState extends State<TypeDePlonge> {

  bool isStrechedACocher = false;
  int groupValue2;

  void handleGroupValue2(int value) {
    setState(() {
      groupValue2 = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Padding(
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
                                                      TextStyle(color:Colors.blue.shade900)),
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
            )));
  }
}
