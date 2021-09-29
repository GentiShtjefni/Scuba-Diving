import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/ExpandedListThreeRows.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

import '../enregisterInformations.dart';


class TypeDeSite extends StatefulWidget {
  const TypeDeSite({Key key}) : super(key: key);

  @override
  _TypeDeSiteState createState() => _TypeDeSiteState();
}

class _TypeDeSiteState extends State<TypeDeSite> {
  final informations = Informations();
  bool isStrechedType = false;
  int groupValue1;

  void handleGroupValue1(int value) {
    setState(() {
      groupValue1 = value;
      if(groupValue1== 0){
        informations.type = 'plonge';
      }else if (groupValue1 == 1){
        informations.type = 'snorkeling';
      }else if (groupValue1 == 2){
        informations.type = 'centre';
      }else {
        informations.type = null;
      }
      print(informations.type);
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
            )));
  }
}
