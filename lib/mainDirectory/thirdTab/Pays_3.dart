import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/EspandedPays.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';
class PaysDropDownThird extends StatefulWidget {
  @override
  _PaysDropDownThirdState createState() => _PaysDropDownThirdState();
}

class _PaysDropDownThirdState extends State<PaysDropDownThird> {
  bool isStrechedPay = false;
  String ddPaysAsia3 = 'select';
  String ddPaysEurope3 = 'select';
  String ddPaysNAmerica3 = 'select';
  String ddPaysSAmerica3 = 'select';
  String ddPaysOceania3 = 'select';
  String ddPaysAfrica3 = 'select';

  int groupValuePay3;


  void handleGroupValue0(int value) {
    setState(() {
      groupValuePay3 = value;
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
                                    child: Row(
                                      children: [
                                        Text(
                                          'Pays',
                                          style: new TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            decorationThickness: 3.0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            '(liste des plus populaires)',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isStrechedPay = !isStrechedPay;
                                      });
                                    },
                                    child: Icon(
                                      isStrechedPay
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
                          ExpandedSectionPays(
                              expand: isStrechedPay,
                              height: 315,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
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
                                          groupValue: groupValuePay3,
                                          onChanged: handleGroupValue0,
                                        ),
                                        new Expanded(
                                          child:
                                          Text('Asia', style: _textStyle()),
                                        ),
                                        new Padding(
                                          padding:
                                          const EdgeInsets.only(right: 5.0),
                                          child: DropdownButton(
                                            dropdownColor: Colors.grey.shade300,
                                            value: ddPaysAsia3,
                                            icon:
                                            Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddPaysAsia3 = newValue;
                                              });
                                            },
                                            items: [
                                              'select',
                                              'Thailande',
                                              'Inde',
                                              'Srilanka',
                                              'Maldives',
                                              'Oman',
                                              'Japon',
                                              'Taiwan',
                                              'Vietnam',
                                              'Malaisie',
                                              'Indonésie',
                                              'Philippines',
                                              'Bornéo',
                                              'autres'
                                            ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
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
                                          groupValue: groupValuePay3,
                                          onChanged: handleGroupValue0,
                                        ),
                                        new Expanded(
                                          child: Text('Europe',
                                              style: _textStyle()),
                                        ),
                                        new Padding(
                                          padding:
                                          const EdgeInsets.only(right: 5.0),
                                          child: DropdownButton(
                                            dropdownColor: Colors.grey.shade300,
                                            value: ddPaysEurope3,
                                            icon:
                                            Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddPaysEurope3 = newValue;
                                              });
                                            },
                                            items: [
                                              'select',
                                              'Turquie',
                                              'Grèce',
                                              'Malte',
                                              'Italie',
                                              'Espagne',
                                              'France',
                                              'Portugal',
                                            ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
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
                                          groupValue: groupValuePay3,
                                          onChanged: handleGroupValue0,
                                        ),
                                        new Expanded(
                                          child: Text('Amérique du N',
                                              style: _textStyle()),
                                        ),
                                        new Padding(
                                          padding:
                                          const EdgeInsets.only(right: 5.0),
                                          child: DropdownButton(
                                            dropdownColor: Colors.grey.shade300,
                                            value: ddPaysNAmerica3,
                                            icon:
                                            Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddPaysNAmerica3 = newValue;
                                              });
                                            },
                                            items: [
                                              'select',
                                              'Canada',
                                              'USA',
                                              'Mexique',
                                              'Cuba',
                                              'Bahamas',
                                              'autre',
                                            ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
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
                                          groupValue: groupValuePay3,
                                          onChanged: handleGroupValue0,
                                        ),
                                        new Expanded(
                                          child: Text('Amérique du S',
                                              style: _textStyle()),
                                        ),
                                        new Padding(
                                          padding:
                                          const EdgeInsets.only(right: 5.0),
                                          child: DropdownButton(
                                            dropdownColor: Colors.grey.shade300,
                                            value: ddPaysSAmerica3,
                                            icon:
                                            Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddPaysSAmerica3 = newValue;
                                              });
                                            },
                                            items: [
                                              'select',
                                              'Honduras',
                                              'Nicaragua',
                                              'Costa Rica',
                                              'Panama',
                                              'Colombia',
                                              'Equateur',
                                              'Brésil',
                                              'Argentine',
                                              'autres',
                                            ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
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
                                          groupValue: groupValuePay3,
                                          onChanged: handleGroupValue0,
                                        ),
                                        new Expanded(
                                          child: Text('Océanie ',
                                              style: _textStyle()),
                                        ),
                                        new Padding(
                                          padding:
                                          const EdgeInsets.only(right: 5.0),
                                          child: DropdownButton(
                                            dropdownColor: Colors.grey.shade300,
                                            value: ddPaysOceania3,
                                            icon:
                                            Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddPaysOceania3 = newValue;
                                              });
                                            },
                                            items: [
                                              'select',
                                              'Australie',
                                              'Nouvelle',
                                              'Zélande',
                                              'autres',
                                            ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
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
                                          groupValue: groupValuePay3,
                                          onChanged: handleGroupValue0,
                                        ),
                                        new Expanded(
                                          child: Text('Afrique',
                                              style: _textStyle()),
                                        ),
                                        new Padding(
                                          padding:
                                          const EdgeInsets.only(right: 5.0),
                                          child: DropdownButton(
                                            dropdownColor: Colors.grey.shade300,
                                            value: ddPaysAfrica3,
                                            icon:
                                            Icon(Icons.keyboard_arrow_down),
                                            elevation: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                ddPaysAfrica3 = newValue;
                                              });
                                            },
                                            items: [
                                              'select',
                                              'Egypte',
                                              'Madagascar',
                                              'Mozambique',
                                              'Afrique du Sud',
                                              'autres',
                                            ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
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
