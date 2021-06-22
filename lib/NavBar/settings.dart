import 'package:flutter/material.dart';
import 'package:project/mainDirectory/AppBar.dart';
import 'package:project/mainDirectory/tools/ExpandedAbone.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';

class Settingss extends StatefulWidget {
  const Settingss({Key key}) : super(key: key);

  @override
  _SettingssState createState() => _SettingssState();
}

class _SettingssState extends State<Settingss> {
  int _currentIndex = 0;
  bool isSelectedAbonne = true;
  bool isStrechedAbone = false;

  int groupValueParticuliers;
  void handleGroupValueParticuliers(value){
    setState(() {
      groupValueParticuliers = value;
    });
  }
  int groupValuePro;
  void handleGroupValuePro(value){
    setState(() {
      groupValuePro = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      currentIndex: 0,
      isSelectedHome: false,
      isSelectedSecond: false,
      isSelectedThird: false,
      isSelectedFourth: false,
      child: new Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('images/bg1.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              new Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: new Container(
                  height: 100,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: new AssetImage('images/settings.png'),
                        fit: BoxFit.fitHeight),
                  ),
                  child: new Text(
                    'Gérer mon abonnement',
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              new Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new InkWell(
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(30),
                        child: new Container(
                          height: 60,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: isSelectedAbonne
                                ? LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff59a5da),
                                  Color(0xff60af6c),
                                ])
                                : null,
                          ),
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 14.0),
                            child: new Center(
                              child: new Text('Je m’abonne',
                                  style: new TextStyle(
                                    fontSize: 16,
                                    color: isSelectedAbonne
                                        ? Colors.white
                                        : Colors.blue,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isSelectedAbonne = true;
                          _currentIndex = 0;
                        });
                      },
                    ),
                    new InkWell(
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(30),
                        child: new Container(
                          height: 60,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: isSelectedAbonne
                                ? null
                                : LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff59a5da),
                                  Color(0xff60af6c),
                                ]),
                          ),
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 14.0),
                            child: new Center(
                              child: new Text('Je me connecte',
                                  style: new TextStyle(
                                    fontSize: 16,
                                    color: isSelectedAbonne
                                        ? Colors.blue
                                        : Colors.white,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isSelectedAbonne = false;
                          _currentIndex = 1;
                        });
                      },
                    ),
                  ],
                ),
              ),
              IndexedStack(
                index: _currentIndex,
                children: [
                  Column(
                    children: [
                      new Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: new Column(
                          children: [
                            new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(20),
                              child: new TextField(
                                decoration: InputDecoration(
                                  hintText: 'NOM/PSEUDO',
                                  contentPadding: EdgeInsets.only(left: 10),
                                  hintStyle: TextStyle(color: Colors.blue),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            new SizedBox(
                              height: 8,
                            ),
                            new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(20),
                              child: new TextField(
                                decoration: InputDecoration(
                                  hintText: 'ADRESSE MAIL',
                                  contentPadding: EdgeInsets.only(left: 10),
                                  hintStyle: TextStyle(color: Colors.blue),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            new SizedBox(
                              height: 8,
                            ),
                            new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(20),
                              child: new TextField(
                                decoration: InputDecoration(
                                  hintText: 'MOT DE PASSE',
                                  contentPadding: EdgeInsets.only(left: 10),
                                  hintStyle: TextStyle(color: Colors.blue),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            new SizedBox(
                              height: 8,
                            ),
                            new Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(30),
                              child: new Container(
                                // height: double.infinity,
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
                                                child: Material(
                                                  elevation: 10,
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 45,
                                                        width: double.infinity,
                                                        padding: EdgeInsets.only(
                                                            right: 10),
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
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                    10,
                                                                    vertical:
                                                                    10),
                                                                child: Text(
                                                                  'TYPE DE ABONNEMENT ACTUEL',
                                                                  style:
                                                                  new TextStyle(
                                                                    fontSize: 16,
                                                                    color:
                                                                    Colors.blue,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .all(0.0),
                                                              child:
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    isStrechedAbone =
                                                                    !isStrechedAbone;
                                                                  });
                                                                },
                                                                child: Icon(
                                                                  isStrechedAbone
                                                                      ? Icons
                                                                      .keyboard_arrow_up
                                                                      : Icons
                                                                      .keyboard_arrow_down,
                                                                  color:
                                                                  Colors.blue,
                                                                  size: 40,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      ExpandedSectionAbone(
                                                        expand: isStrechedAbone,
                                                        height: 100,
                                                        child: Container(
                                                          margin: EdgeInsets.all(10),
                                                          color: Colors.white70,
                                                          child: Column(
                                                            children: [
                                                              new Text(
                                                                  'Particuliers:',
                                                                  style: new TextStyle(
                                                                    color: Colors.green,
                                                                    fontSize:15,
                                                                  )),
                                                              new Divider(
                                                                color: Colors.blue,
                                                                height: 2.1,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  new Radio(
                                                                      value: 0,
                                                                      groupValue:
                                                                      groupValueParticuliers,
                                                                      onChanged:
                                                                      handleGroupValueParticuliers
                                                                  ),
                                                                  new Text('Découverte',
                                                                      style: new TextStyle(
                                                                        color: groupValueParticuliers == 0 ? Colors.blue : Colors.black,
                                                                        fontSize: 15,
                                                                      ))
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  new Radio(
                                                                      value: 1,
                                                                      groupValue:
                                                                      groupValueParticuliers,
                                                                      onChanged:
                                                                      handleGroupValueParticuliers
                                                                  ),
                                                                  new Text('Explorateur ',
                                                                      style: new TextStyle(
                                                                        color: groupValueParticuliers == 1 ? Colors.blue : Colors.black,
                                                                        fontSize: 15,
                                                                      ))
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  new Radio(
                                                                      value: 2,
                                                                      groupValue:
                                                                      groupValueParticuliers,
                                                                      onChanged:
                                                                      handleGroupValueParticuliers
                                                                  ),
                                                                  new Text('Ambassadeur',
                                                                      style: new TextStyle(
                                                                        color: groupValueParticuliers == 2 ? Colors.blue : Colors.black,
                                                                        fontSize: 15,
                                                                      ))
                                                                ],
                                                              ),
                                                              new Text(
                                                                  'Pro:',
                                                                  style: new TextStyle(
                                                                    color: Colors.green,
                                                                    fontSize:15,
                                                                  )),
                                                              new Divider(
                                                                color: Colors.blue,
                                                                height: 2.1,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  new Radio(
                                                                    value: 0,
                                                                    groupValue:
                                                                    groupValuePro,
                                                                    onChanged:
                                                                    handleGroupValuePro,
                                                                  ),
                                                                  new Text('Côtier',
                                                                      style: new TextStyle(
                                                                        color: groupValuePro == 0 ? Colors.blue : Colors.black,
                                                                        fontSize: 15,
                                                                      ))
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  new Radio(
                                                                      value: 1,
                                                                      groupValue:
                                                                      groupValuePro,
                                                                      onChanged:
                                                                      handleGroupValuePro
                                                                  ),
                                                                  new Text('Pélagique ',
                                                                      style: new TextStyle(
                                                                        color: groupValuePro == 1 ? Colors.blue : Colors.black,
                                                                        fontSize: 15,
                                                                      ))
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  new Radio(
                                                                      value: 2,
                                                                      groupValue:
                                                                      groupValuePro,
                                                                      onChanged:
                                                                      handleGroupValuePro
                                                                  ),
                                                                  new Text('Abyssal',
                                                                      style: new TextStyle(
                                                                        color: groupValuePro == 2 ? Colors.blue : Colors.black,
                                                                        fontSize: 15,
                                                                      ))
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
                            ),
                            new Padding(
                              padding: const EdgeInsets.fromLTRB(25, 20, 25, 5),
                              child: ListTile(
                                title: new Container(
                                  height: 55,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
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
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: new Center(
                                    child: new Text(
                                      'SE CONNECTER',
                                      style: new TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        decorationThickness: 3.0,
                                        color: Colors.blue.shade900,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).popAndPushNamed('/');
                                },
                              ),
                            ),
                            new SizedBox(
                              height: 40,
                            ),
                            new Center(
                              child: new Text('Merci de votre confiance!',
                                  style: new TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FontStyle.italic,
                                  )),
                            ),
                            new SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      children: [
                        new Material(
                          elevation: 8,
                          borderRadius: BorderRadius.circular(20),
                          child: new TextField(
                            decoration: InputDecoration(
                              hintText: 'NOM/PSEUDO',
                              contentPadding: EdgeInsets.only(left: 10),
                              hintStyle: TextStyle(color: Colors.blue),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 8,
                        ),
                        new Material(
                          elevation: 8,
                          borderRadius: BorderRadius.circular(20),
                          child: new TextField(
                            decoration: InputDecoration(
                              hintText: 'ADRESSE MAIL',
                              contentPadding: EdgeInsets.only(left: 10),
                              hintStyle: TextStyle(color: Colors.blue),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.fromLTRB(25, 20, 25, 5),
                          child: ListTile(
                            title: new Container(
                              height: 55,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: GradientBorder.uniform(
                                    width: 3.0,
                                    gradient: LinearGradient(colors: <Color>[
                                      Color(0xff59a5da),
                                      Color(0xff60af6c)
                                    ], stops: [
                                      0.3,
                                      0.5
                                    ])),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: new Center(
                                child: new Text(
                                  'SE CONNECTER',
                                  style: new TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    decorationThickness: 3.0,
                                    color: Colors.blue.shade900,
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).popAndPushNamed('/');
                            },
                          ),
                        ),
                        new SizedBox(
                          height: 40,
                        ),
                        new Center(
                          child: new Text('Merci de votre confiance!',
                              style: new TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic,
                              )),
                        ),
                        new SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
