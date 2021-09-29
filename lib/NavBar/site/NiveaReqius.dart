import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';
import 'package:project/mainDirectory/tools/ExpandedNiveau2.dart';

import '../enregisterInformations.dart';



class NiveauRequis extends StatefulWidget {
  const NiveauRequis({Key key}) : super(key: key);

  @override
  _NiveauRequisState createState() => _NiveauRequisState();
}

class _NiveauRequisState extends State<NiveauRequis> {
  final informations = Informations();
  bool isStrechedDropDown = false;
  int groupValue;

  void handleGroupValue(int value) {
    setState(() {
      groupValue = value;
      if(groupValue == 0){
        informations.niveauRequis = 'debutant';
      }else if (groupValue == 1){
        informations.niveauRequis = 'open water(niveau 1)';
      }else if (groupValue == 2){
        informations.niveauRequis = 'avance(niveau2)';
      }else if (groupValue == 3){
        informations.niveauRequis = 'plus';
      }else {
        informations.niveauRequis = null;
      }
      print(informations.niveauRequis);
    });
  }
  TextStyle _textStyle() {
    return new TextStyle(
      color: Colors.blue.shade900,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                                          'Niveau requis',
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
                                            isStrechedDropDown =
                                            !isStrechedDropDown;
                                          });
                                        },
                                        child: Icon(
                                          isStrechedDropDown
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
                              ExpandedSectionNiveau2(
                                expand: isStrechedDropDown,
                                height: 100,
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal:5.0),
                                  color: Colors.white70,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      //controller: scrollController2,
                                      Row(
                                        children: [
                                          Radio(
                                              value: 0,
                                              groupValue: groupValue,
                                              onChanged: handleGroupValue),
                                          new Text('débutant', style: _textStyle()),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                              value: 1,
                                              groupValue: groupValue,
                                              onChanged: handleGroupValue),
                                          new Text('open water (niveau 1)',
                                              style: _textStyle()),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                              value: 2,
                                              groupValue: groupValue,
                                              onChanged: handleGroupValue),
                                          new Text('avancé (niveau 2)',
                                              style: _textStyle()),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                              value: 3,
                                              groupValue: groupValue,
                                              onChanged: handleGroupValue),
                                          new Text('plus', style: _textStyle()),
                                        ],
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
          )),
    );
  }
}
