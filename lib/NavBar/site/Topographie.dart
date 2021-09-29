import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/ExpandedListAnimationFourRows.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

import '../enregisterInformations.dart';

class TopographieDeSite extends StatefulWidget {
  const TopographieDeSite({Key key}) : super(key: key);

  @override
  _TopographieDeSiteState createState() => _TopographieDeSiteState();
}

class _TopographieDeSiteState extends State<TopographieDeSite> {
  final informations = Informations();
  TextEditingController _autresController = TextEditingController();
  bool isStrechedTopographie = false;
  int groupValue3;

  void handleGroupValue3(int value) {
    setState(() {
      groupValue3 = value;
      if(groupValue3 == 0){
        informations.topographie = 'epave';
      }else if (groupValue3 == 1){
        informations.topographie = 'tombant';
      }else if (groupValue3 == 2){
        informations.topographie = 'recif';
      }else if (groupValue3 == 3){
        informations.topographie = 'sable/mangrove';
      }else if (groupValue3 == 4){
        informations.topographie = 'grotte';
      }else if (groupValue3 == 5){
        informations.topographie = 'volcanique';
      }else if (groupValue3 == 6){
        informations.topographie = _autresController.text;
      }else {
        informations.topographie = null;
      }
      print(informations.topographie);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                                                      value: 6,
                                                      groupValue:
                                                      groupValue3,
                                                      onChanged:
                                                      handleGroupValue3),
                                                  new Text(
                                                      'autres:',
                                                      style:
                                                      TextStyle(color: Colors.blue.shade900)),
                                                  Expanded(
                                                      child:
                                                      new TextField(
                                                        controller: _autresController,
                                                      )),
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
            ))
    );
  }
}
