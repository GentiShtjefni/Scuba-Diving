import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/ExpandedListThreeRows.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

import '../enregisterInformations.dart';


class NiveauAcceptes extends StatefulWidget {
  const NiveauAcceptes({Key key}) : super(key: key);

  @override
  _NiveauAcceptesState createState() => _NiveauAcceptesState();
}

class _NiveauAcceptesState extends State<NiveauAcceptes> {
  final informations = Informations();
  bool isStrechedNivAcc = false;
  int groupValueNiveauAcc;

  void handleGroupValueNiveauAcc(int value) {
    setState(() {
      groupValueNiveauAcc = value;
      if(groupValueNiveauAcc == 0){
        informations.niveauAcceptes = 'snorkel';
      }else if (groupValueNiveauAcc == 1){
        informations.niveauAcceptes = 'debutant';
      }else if (groupValueNiveauAcc == 2){
        informations.niveauAcceptes = 'plongeurs experimentes';
      }else {
        informations.niveauAcceptes = null;
      }
      print(informations.niveauAcceptes);
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
              child:
              Column(mainAxisSize: MainAxisSize.max, children: [
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
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(25))),
                                constraints: BoxConstraints(
                                  minHeight: 45,
                                  minWidth: double.infinity,
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding:
                                        EdgeInsets.only(left: 8.0)),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(
                                            horizontal: 5,
                                            vertical: 5),
                                        child: Text(
                                          'Niveau acceptés',
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
                                            isStrechedNivAcc =
                                            !isStrechedNivAcc;
                                          });
                                        },
                                        child: Icon(
                                          isStrechedNivAcc
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
                                  expand: isStrechedNivAcc,
                                  height: 350,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
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
                                              style: new TextStyle(
                                                color:
                                                groupValueNiveauAcc ==
                                                    0
                                                    ? Colors
                                                    .blue.shade900
                                                    : Colors.black,
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
                                              style: new TextStyle(
                                                color:
                                                groupValueNiveauAcc ==
                                                    1
                                                    ? Colors
                                                    .blue.shade900
                                                    : Colors.black,
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
                                                handleGroupValueNiveauAcc),
                                            title: Text(
                                              'plongeurs expérimentés',
                                              style: new TextStyle(
                                                color:
                                                groupValueNiveauAcc ==
                                                    2
                                                    ? Colors
                                                    .blue.shade900
                                                    : Colors.black,
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
            )));
  }
}
