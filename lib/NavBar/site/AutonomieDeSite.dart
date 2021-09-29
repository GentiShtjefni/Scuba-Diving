import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/ExpandedListThreeRows.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

import '../enregisterInformations.dart';


class AutonomieDeSite extends StatefulWidget {
  const AutonomieDeSite({Key key}) : super(key: key);

  @override
  _AutonomieDeSiteState createState() => _AutonomieDeSiteState();
}

class _AutonomieDeSiteState extends State<AutonomieDeSite> {
  bool isStrechedAutonomie = false;
  int groupValueAutonomie;
  final informations = Informations();

  void handleGroupValueAutonomie(int value) {
    setState(() {
      groupValueAutonomie = value;
      if (groupValueAutonomie == 0){
        informations.autonomie = 'seul';
      }else if(groupValueAutonomie == 1){
        informations.autonomie = 'guidee';
      }else if(groupValueAutonomie == 2){
        informations.autonomie = 'autre';
      }else {
        informations.autonomie = null;
      }
      print(informations.autonomie);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                                    child: Column(
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
    );
  }
}
