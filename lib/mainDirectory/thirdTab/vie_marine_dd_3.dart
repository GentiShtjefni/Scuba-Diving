import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/ExpandedVm.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

class VieMarineDropDownThird extends StatefulWidget {
  @override
  _VieMarineDropDownThirdState createState() => _VieMarineDropDownThirdState();
}

class _VieMarineDropDownThirdState extends State<VieMarineDropDownThird> {
  bool isStrechedVieMarine = false;
  String ddVMThird1 = 'select';
  String ddVMThird2 = 'select';
  String ddVMThird3 = 'select';
  String ddVMThird4 = 'select';
  String ddVMThird5 = 'select';
  String ddVMThird6 = 'select';
  String ddVMThird7 = 'select';
  String ddVMThird8 = 'select';
  String ddVMThird9 = 'select';
  String ddVMThird10 = 'select';
  String ddVMThird11 = 'select';
  String ddVMThird12 = 'select';

  int groupValueVM3;

  void handleGroupValue0(int value) {
    setState(() {
      groupValueVM3 = value;
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
                                          groupValue: groupValueVM3,
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
                                            value: ddVMThird1,
                                            icon: Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddVMThird1 = newValue;
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
                                          groupValue: groupValueVM3,
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
                                            value: ddVMThird2,
                                            icon: Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddVMThird2 = newValue;
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
                                          groupValue: groupValueVM3,
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
                                            value: ddVMThird3,
                                            icon: Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddVMThird3 = newValue;
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
                                          groupValue: groupValueVM3,
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
                                            value: ddVMThird4,
                                            icon: Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddVMThird4 = newValue;
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
                                          groupValue: groupValueVM3,
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
                                            value: ddVMThird5,
                                            icon: Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddVMThird5 = newValue;
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
                                          groupValue: groupValueVM3,
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
                                            value: ddVMThird6,
                                            icon: Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddVMThird6 = newValue;
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
                                          groupValue: groupValueVM3,
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
                                            value: ddVMThird7,
                                            icon: Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddVMThird7 = newValue;
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
                                          groupValue: groupValueVM3,
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
                                            value: ddVMThird8,
                                            icon: Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddVMThird8 = newValue;
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
                                          groupValue: groupValueVM3,
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
                                            value: ddVMThird9,
                                            icon: Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddVMThird9 = newValue;
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
                                          groupValue: groupValueVM3,
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
                                            value: ddVMThird10,
                                            icon: Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddVMThird10 = newValue;
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
                                          groupValue: groupValueVM3,
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
                                            value: ddVMThird11,
                                            icon: Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddVMThird11 = newValue;
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
