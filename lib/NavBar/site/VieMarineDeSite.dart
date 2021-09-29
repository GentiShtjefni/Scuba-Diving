import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/ExpandedVm.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

import '../enregisterInformations.dart';


class VmDeSite extends StatefulWidget {
  const VmDeSite({Key key}) : super(key: key);

  @override
  _VmDeSiteState createState() => _VmDeSiteState();
}

class _VmDeSiteState extends State<VmDeSite> {
  final informations = Informations();
  bool isStrechedVieMarine = false;
  String ddVM1 = 'select';
  String ddVM2 = 'select';
  String ddVM3 = 'select';
  String ddVM4 = 'select';
  String ddVM5 = 'select';
  String ddVM6 = 'select';
  String ddVM7 = 'select';
  String ddVM8 = 'select';
  String ddVM9 = 'select';
  String ddVM10 = 'select';
  String ddVM11 = 'select';
  String ddVM12 = 'select';
  int groupValueVM;


  void handleGroupValue0(int value8) {
    setState(() {
      groupValueVM = value8;
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
      padding: EdgeInsets.fromLTRB(20,10,20,0),
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
                                          'Vie Marine',
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
                                            isStrechedVieMarine =
                                            !isStrechedVieMarine;
                                          });
                                        },
                                        child: Icon(
                                          isStrechedVieMarine
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
                              ExpandedSectionVM(
                                  expand: isStrechedVieMarine,
                                  height: 300,
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                                    color: Colors.white70,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      // controller: _scrollController,
                                      children: [
                                        //controller: scrollController2,
                                        new Row(
                                          children: [
                                            new Radio(
                                              value: 0,
                                              groupValue: groupValueVM,
                                              onChanged: handleGroupValue0,
                                            ),
                                            new Expanded(
                                              child: Text('Requin',
                                                  style: _textStyle()),
                                            ),
                                            new Padding(
                                              padding: const EdgeInsets.only(right:5.0),
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddVM1,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddVM1 = newValue;
                                                    if (ddVM1 != 'select'){
                                                      informations.requin = ddVM1;
                                                    }else {
                                                      informations.requin = null;
                                                    }
                                                    print(informations.requin);
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  'one',
                                                  'two',
                                                  'three'

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
                                              groupValue: groupValueVM,
                                              onChanged: handleGroupValue0,
                                            ),
                                            new Expanded(
                                              child: Text('mammifère',
                                                  style: _textStyle()),
                                            ),
                                            new Padding(
                                              padding: const EdgeInsets.only(right:5.0),
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddVM2,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddVM2 = newValue;
                                                    if (ddVM2 != 'select'){
                                                      informations.mammifere = ddVM2;
                                                    }else {
                                                      informations.mammifere = null;
                                                    }
                                                    print(informations.mammifere);
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  '1',
                                                  '2',
                                                  '3'
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
                                              value: 2,
                                              groupValue: groupValueVM,
                                              onChanged: handleGroupValue0,
                                            ),
                                            new Expanded(
                                              child: Text('reptile & anguille',
                                                  style: _textStyle()),
                                            ),
                                            new Padding(
                                              padding: const EdgeInsets.only(right:5.0),
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddVM3,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddVM3 = newValue;
                                                    if (ddVM3 != 'select'){
                                                      informations.reptile = ddVM3;
                                                    }else {
                                                      informations.reptile = null;
                                                    }
                                                    print(informations.reptile);
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  '1',
                                                  '2',
                                                  '3'
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
                                              value: 3,
                                              groupValue: groupValueVM,
                                              onChanged: handleGroupValue0,
                                            ),
                                            new Expanded(
                                              child: Text('crustacé',
                                                  style: _textStyle()),
                                            ),
                                            new Padding(
                                              padding: const EdgeInsets.only(right:5.0),
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddVM4,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddVM4 = newValue;
                                                    if (ddVM4 != 'select'){
                                                      informations.crustace = ddVM4;
                                                    }else {
                                                      informations.crustace = null;
                                                    }
                                                    print(informations.crustace);
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  '1',
                                                  '2',
                                                  '3'
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
                                              value: 4,
                                              groupValue: groupValueVM,
                                              onChanged: handleGroupValue0,
                                            ),
                                            new Expanded(
                                              child: Text('raie',
                                                  style: _textStyle()),
                                            ),
                                            new Padding(
                                              padding: const EdgeInsets.only(right:5.0),
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddVM5,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddVM5 = newValue;
                                                    if (ddVM5 != 'select'){
                                                      informations.raie = ddVM5;
                                                    }else {
                                                      informations.raie = null;
                                                    }
                                                    print(informations.raie);
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  '1',
                                                  '2',
                                                  '3'
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
                                              value: 5,
                                              groupValue: groupValueVM,
                                              onChanged: handleGroupValue0,
                                            ),
                                            new Expanded(
                                              child: Text('limace & gastropode',
                                                  style: _textStyle()),
                                            ),
                                            new Padding(
                                              padding: const EdgeInsets.only(right:5.0),
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddVM6,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddVM6 = newValue;
                                                    if (ddVM6 != 'select'){
                                                      informations.limace = ddVM6;
                                                    }else {
                                                      informations.limace = null;
                                                    }
                                                    print(informations.limace);
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  '1',
                                                  '2',
                                                  '3'
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
                                              value: 6,
                                              groupValue: groupValueVM,
                                              onChanged: handleGroupValue0,
                                            ),
                                            new Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('céphalopode',
                                                      style: _textStyle()),
                                                  Text('& concombre',
                                                      style: _textStyle()),
                                                ],
                                              ),
                                            ),
                                            new Padding(
                                              padding: const EdgeInsets.only(right:5.0),
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddVM7,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddVM7 = newValue;
                                                    if (ddVM7 != 'select'){
                                                      informations.cephalopode = ddVM7;
                                                    }else {
                                                      informations.cephalopode = null;
                                                    }
                                                    print(informations.cephalopode);
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  '1',
                                                  '2',
                                                  '3'
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
                                              value: 7,
                                              groupValue: groupValueVM,
                                              onChanged: handleGroupValue0,
                                            ),
                                            new Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,

                                                children: [
                                                  Text('corail/bivalve/',
                                                      style: _textStyle()),
                                                  Text('oursin/étoile de mer  ',
                                                      style: _textStyle()),
                                                ],
                                              ),
                                            ),
                                            new Padding(
                                              padding: const EdgeInsets.only(right:5.0),
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddVM8,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddVM8 = newValue;
                                                    if (ddVM8 != 'select'){
                                                      informations.corail = ddVM8;
                                                    }else {
                                                      informations.corail = null;
                                                    }
                                                    print(informations.corail);
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  '1',
                                                  '2',
                                                  '3'
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
                                              value: 8,
                                              groupValue: groupValueVM,
                                              onChanged: handleGroupValue0,
                                            ),
                                            new Expanded(
                                              child: Text('poisson pélagique',
                                                  style: _textStyle()),
                                            ),
                                            new Padding(
                                              padding: const EdgeInsets.only(right:5.0),
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddVM9,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddVM9 = newValue;
                                                    if (ddVM9 != 'select'){
                                                      informations.poissonPelagique = ddVM9;
                                                    }else {
                                                      informations.poissonPelagique = null;
                                                    }
                                                    print(informations.poissonPelagique);
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  '1',
                                                  '2',
                                                  '3'
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
                                              value: 9,
                                              groupValue: groupValueVM,
                                              onChanged: handleGroupValue0,
                                            ),
                                            new Expanded(
                                              child: Text('poisson de récif',
                                                  style: _textStyle()),
                                            ),
                                            new Padding(
                                              padding: const EdgeInsets.only(right:5.0),
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddVM10,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddVM10 = newValue;
                                                    if (ddVM10 != 'select'){
                                                      informations.poissonDeRecif = ddVM10;
                                                    }else {
                                                      informations.poissonDeRecif = null;
                                                    }
                                                    print(informations.poissonDeRecif);
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  '1',
                                                  '2',
                                                  '3'
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
                                              value: 10,
                                              groupValue: groupValueVM,
                                              onChanged: handleGroupValue0,
                                            ),
                                            new Expanded(
                                              child: Text('poisson de fond',
                                                  style: _textStyle()),
                                            ),
                                            new Padding(
                                              padding: const EdgeInsets.only(right:5.0),
                                              child: DropdownButton(

                                                dropdownColor: Colors.grey.shade300,
                                                value: ddVM11,
                                                icon: Icon(Icons.keyboard_arrow_down),
                                                elevation: 10,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    ddVM11 = newValue;
                                                    if (ddVM11 != 'select'){
                                                      informations.poissonDeFond = ddVM11;
                                                    }else {
                                                      informations.poissonDeFond = null;
                                                    }
                                                    print(informations.poissonDeFond);
                                                  });
                                                },
                                                items: [
                                                  'select',
                                                  '1',
                                                  '2',
                                                  '3'
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
                                      ],
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
