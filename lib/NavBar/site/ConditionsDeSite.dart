import 'package:flutter/material.dart';
import 'package:project/NavBar/enregisterInformations.dart';
import 'package:project/mainDirectory/tools/ExpandedConditions2.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';


class ConditionsDeSite extends StatefulWidget {
  const ConditionsDeSite({Key key}) : super(key: key);

  @override
  _ConditionsDeSiteState createState() => _ConditionsDeSiteState();
}

class _ConditionsDeSiteState extends State<ConditionsDeSite> {
  final informations = Informations();
  bool isStrechedConditions = false;
  int groupValueConditions0;
  void handleGroupValue0(int value) {
    setState(() {
      groupValueConditions0 = value;
    });
  }
  String ddValueconditions1 = 'select';
  String ddValueconditions2 = 'select';
  String ddValueconditions3 = 'select';

  TextStyle _textStyle() {
    return new TextStyle(
      color: Colors.blue.shade900,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,10,20,0),
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
                                              if(ddValueconditions1 != 'select'){
                                                informations.temperatureEau = ddValueconditions1;
                                              }else {
                                                informations.temperatureEau = null;
                                              }
                                              print(informations.temperatureEau);
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
                                                if(ddValueconditions2 != 'select'){
                                                  informations.courant = ddValueconditions2;
                                                }else {
                                                  informations.courant = null;
                                                }
                                                print(informations.courant);
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
                                                if(ddValueconditions3 != 'select'){
                                                  informations.visibilite = ddValueconditions3;
                                                }else {
                                                  informations.visibilite = null;
                                                }
                                                print(informations.visibilite);
                                              });
                                            },
                                            items: [
                                              'select',
                                              '0 à 10m',
                                              '10m à 20m',
                                              '20m et +',
                                              'difficulté autre'
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
    );
  }
}
