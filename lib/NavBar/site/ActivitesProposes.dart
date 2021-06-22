import 'package:flutter/material.dart';
import 'package:project/NavBar/enregisterInformations.dart';
import 'package:project/mainDirectory/tools/ExpandedListThreeRows.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';


class ActivitesProposes extends StatefulWidget {
  const ActivitesProposes({Key key}) : super(key: key);

  @override
  _ActivitesProposesState createState() => _ActivitesProposesState();
}

class _ActivitesProposesState extends State<ActivitesProposes> {
  bool isStrechedActivities = false;
  int groupValueActivities = 0;
  void handleGroupValueActivities(int value) {
    setState(() {
      groupValueActivities = value;
      if (groupValueActivities == 0){
        Informations(
          activitesProposes: 'cours plongee',
        );
      }else if(groupValueActivities == 1){
        Informations().activitesProposes = 'sortie bateau';
      }else if(groupValueActivities == 2){
        Informations().activitesProposes = 'location equipment';
      }
      print(Informations().activitesProposes);
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                                    Expanded(
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 10),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
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
                                                groupValue:
                                                groupValueActivities,
                                                onChanged:
                                                handleGroupValueActivities),
                                            new Text('cours plongée',
                                                style: new TextStyle(
                                                  color:
                                                  groupValueActivities ==
                                                      0
                                                      ? Colors.blue
                                                      .shade900
                                                      : Colors.black,
                                                )),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Radio(
                                                value: 1,
                                                groupValue:
                                                groupValueActivities,
                                                onChanged:
                                                handleGroupValueActivities),
                                            new Text('sortie bateau',
                                                style: new TextStyle(
                                                    color:
                                                    groupValueActivities ==
                                                        1
                                                        ? Colors.blue
                                                        .shade900
                                                        : Colors
                                                        .black)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Radio(
                                                value: 2,
                                                groupValue:
                                                groupValueActivities,
                                                onChanged:
                                                handleGroupValueActivities),
                                            new Text(
                                                'location équipement',
                                                style: new TextStyle(
                                                  color:
                                                  groupValueActivities ==
                                                      2
                                                      ? Colors.blue
                                                      .shade900
                                                      : Colors.black,
                                                )),
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
  void activitesProposes(){
    if (groupValueActivities == 0){
      Informations().activitesProposes = 'cours plongee';
    }else if(groupValueActivities == 1){
      Informations().activitesProposes = 'sortie bateau';
    }else if(groupValueActivities == 2){
      Informations().activitesProposes = 'location equipment';
    }else return null;
}


}
