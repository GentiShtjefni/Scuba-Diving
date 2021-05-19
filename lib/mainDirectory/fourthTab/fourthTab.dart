import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/my_flutter_app_icons.dart';

import '../tools/borderradius.dart';

class FourthTab extends StatefulWidget {
  const FourthTab({Key key}) : super(key: key);

  @override
  _FourthTabState createState() => _FourthTabState();
}

class _FourthTabState extends State<FourthTab> with AutomaticKeepAliveClientMixin{
  int _currentIndex = 0;
  bool _isSelectedProffessional = false;
  bool _isSelectedPlonger = true;
  int _currentIndexRegister = 0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return new Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new AssetImage('images/bg1.png'),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
      child: IndexedStack(
        index: _currentIndex,
        // sizing: StackFit.expand,
        children: [
          new Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('images/bg1.png'),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                new Container(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: new AssetImage('images/commuaute_bg.png'),
                            fit: BoxFit.fitHeight),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 40.0),
                          ),
                          new Text(
                            'Rejoins la communauté',
                            style: new TextStyle(
                                fontSize: 20,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.w900),
                          ),
                          new Text(
                            'MYDIVETOGO',
                            style: new TextStyle(
                                fontSize: 20,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
                new Container(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new ListTile(
                        title: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 55.0, 25.0, 20.0),
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                    Color(0xff59a5da),
                                    Color(0xff60af6c),
                                  ]),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: new Center(
                              child: new Text(
                                'SE CONNECTER',
                                style: new TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  decorationThickness: 3.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currentIndex = 1;
                          });
                        },
                      ),
                      new Center(
                        child: Text('OU',
                            style: new TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              decorationThickness: 3.0,
                              color: Colors.blue.shade900,
                            )),
                      ),
                      new ListTile(
                        title: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 20.0),
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                    Color(0xff59a5da),
                                    Color(0xff60af6c),
                                  ]),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: new Center(
                              child: new Text(
                                "S'INSCRIRE",
                                style: new TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  decorationThickness: 3.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currentIndex = 2;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          new Container(
            // height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('images/bg1.png'),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
            child: ListView(
              children: [
                new Container(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: new AssetImage('images/commuaute_bg.png'),
                            fit: BoxFit.fitHeight),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 40.0),
                          ),
                          new Text(
                            'Se connecter',
                            style: new TextStyle(
                                fontSize: 20,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.w900),
                          ),
                          new Text(
                            'MYDIVETOGO',
                            style: new TextStyle(
                                fontSize: 20,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      new ListTile(
                        title: Material(
                          elevation: 8.0,
                          borderRadius: BorderRadius.circular(30),
                          child: new TextField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '  ADRESSE MAIL',
                              hintStyle: TextStyle(
                                fontSize: 17,
                                color: Colors.blue.shade300,
                              ),
                            ),
                          ),
                        ),
                      ),
                      new ListTile(
                        title: Material(
                          elevation: 8.0,
                          borderRadius: BorderRadius.circular(30),
                          child: new TextField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '  MOT DE PASSE',
                              hintStyle: TextStyle(
                                fontSize: 17,
                                color: Colors.blue.shade300,
                              ),
                            ),
                          ),
                        ),
                      ),
                      new TextButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.resolveWith(
                              (states) => EdgeInsets.only(top: -10)),
                        ),
                        onPressed: () {
                          setState(() {
                            _currentIndex = 3;
                          });
                        },
                        child: Text(
                          'mot de passe oublié ?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 12,
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ),
                      Padding(
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
                            setState(() {
                              _currentIndex = 0;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 0.0),
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
                                'Back',
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
                            setState(() {
                              _currentIndex = 0;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          new Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('images/bg1.png'),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
            child: ListView(
              children: [
                new Container(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: new AssetImage('images/commuaute_bg.png'),
                            fit: BoxFit.fitHeight),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 40.0),
                          ),
                          new Text(
                            'Rejoins la communauté',
                            style: new TextStyle(
                                fontSize: 20,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.w900),
                          ),
                          new Text(
                            'MYDIVETOGO',
                            style: new TextStyle(
                                fontSize: 20,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
                new ListTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 20.0),
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color(0xff59a5da),
                              Color(0xff60af6c),
                            ]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: new Center(
                        child: new Text(
                          'SE CONNECTER',
                          style: new TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            decorationThickness: 3.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(8, 0, 0, 10),
                  //width: double.infinity,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      new InkWell(
                        onTap: () {
                          setState(() {
                            _isSelectedProffessional = true;
                            _isSelectedPlonger = false;
                            _currentIndexRegister = 0;
                          });
                        },
                        child: new Container(
                          height: 55,
                          decoration: BoxDecoration(
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black45,
                                blurRadius: 8,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: _isSelectedProffessional
                                    ? LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: <Color>[
                                            Color(0xff59a5da),
                                            Color(0xff60af6c),
                                          ])
                                    : LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: <Color>[
                                            Colors.white,
                                            Colors.white,
                                          ]),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 8, 10, 2),
                                child: Container(
                                  child: new Column(
                                    children: [
                                      new Text(
                                        'Je suis',
                                        style: new TextStyle(
                                          color: _isSelectedProffessional
                                              ? Colors.white
                                              : Colors.blue.shade900,
                                        ),
                                      ),
                                      new Text(
                                        'PROFESSIONNEL',
                                        style: new TextStyle(
                                          color: _isSelectedProffessional
                                              ? Colors.white
                                              : Colors.blue.shade900,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 17,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      new InkWell(
                        onTap: () {
                          setState(() {
                            _isSelectedProffessional = false;
                            _isSelectedPlonger = true;
                            _currentIndexRegister = 1;
                          });
                        },
                        child: new Container(
                          height: 55,
                          decoration: BoxDecoration(
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black45,
                                blurRadius: 8,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: _isSelectedPlonger
                                    ? LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: <Color>[
                                            Color(0xff59a5da),
                                            Color(0xff60af6c),
                                          ])
                                    : LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: <Color>[
                                            Colors.white,
                                            Colors.white,
                                          ]),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 8, 10, 2),
                                child: new Column(
                                  children: [
                                    new Text(
                                      'Je suis',
                                      style: new TextStyle(
                                        color: _isSelectedPlonger
                                            ? Colors.white
                                            : Colors.blue.shade900,
                                      ),
                                    ),
                                    new Text(
                                      'PLONGEUR(SE)',
                                      style: new TextStyle(
                                        color: _isSelectedPlonger
                                            ? Colors.white
                                            : Colors.blue.shade900,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new IndexedStack(
                  index: _currentIndexRegister,
                  children: [
                    new Container(
                      child: new Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'LOCALITÉ',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'ORGANISME AFFILIÉ',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'CAPACITÉ ET STRUCTURE',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'TYPE DE PLONGÉE PROPOSÉE',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'NIVEAU REQUIS',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'ACTIVITÉS PROPOSÉES',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'DESCRIPTION DU CENTRE',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'LANGUE PARLÉE/ENSEIGNÉE',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'ESPÈCES MARINE INCONTOURNABLES',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'MEILLEURE PÉRIODE POUR PLONGER',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'PHOTO*',
                                      hintStyle: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue.shade300,
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          MyFlutterApp.upload,
                                          size: 18,
                                          color: Colors.blue.shade300,
                                        ),
                                        onPressed: () {},
                                      )),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'TARIFS*',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'CONTACT INFO',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'RS',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 20, 25, 25),
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
                                    "S'INSCRIRE",
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
                                setState(() {
                                  _currentIndex = 0;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      child: new Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'NOM + PRÉNOM',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'ADRESSE MAI',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'MOT DE PASSE',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'BIOGRAPHIE DESCRIPTION',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'NATIONALITÉ',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'GENRE',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'AGE',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'NIVEAU (# PLONGEUR)',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'NOMBRE PLONGÉE',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'SPÉCIALITÉ',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'ÉQUIPEMENT',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'RS',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                            child: new Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(29),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new TextField(
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'LANGUE',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 20, 25, 25),
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
                                    "S'INSCRIRE",
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
                                setState(() {
                                  _currentIndex = 0;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          new Container(
            // height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('images/bg1.png'),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                new Container(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: new AssetImage('images/commuaute_bg.png'),
                            fit: BoxFit.fitHeight),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 40.0),
                          ),
                          new Text(
                            'Réinitialiser le mot de passe',
                            style: new TextStyle(
                                fontSize: 20,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.w900),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: new Text(
                              'MYDIVETOGO',
                              style: new TextStyle(
                                fontSize: 20,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      new Padding(
                        padding: EdgeInsets.fromLTRB(0, 45, 130, 3),
                        child: new Text(
                          'Tapez votre mot de passe',
                          style: new TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 0.0),
                        child: new ListTile(
                          title: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(30),
                            child: new TextField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '  ADRESSE MAIL',
                                hintStyle: TextStyle(
                                  fontSize: 17,
                                  color: Colors.blue.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 20.0),
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
                            setState(() {
                              _currentIndex = 0;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
