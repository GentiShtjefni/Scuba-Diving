import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/firbase_auth.dart';
import 'package:project/mainDirectory/AppBar.dart';
import 'package:project/mainDirectory/fourthTab/ResetPassword.dart';
import 'package:project/mainDirectory/tools/my_flutter_app_icons.dart';
import '../tools/borderradius.dart';
import '../tools/loading.dart';

class FourthTab extends StatefulWidget {
  FourthTab({Key key}) : super(key: key);

  @override
  _FourthTabState createState() => _FourthTabState();
}

class _FourthTabState extends State<FourthTab> {

  final _formKey = GlobalKey<FormState>();
  String errorMessage;

  String _email = '';
  String _emailRegister = '';
  String _password = '';
  String _passwordRegister = '';
  String _emailClient = '';
  String _passwordClient = '';
  int _currentIndex = 0;
  bool _isSelectedProffessional = true;
  bool _isSelectedPlonger = false;
  int _currentIndexRegister = 0;
  final FirebaseLogin _auth = FirebaseLogin();
  final _formKeyLogin = GlobalKey<FormState>();
  final _formKeyRegister = GlobalKey<FormState>();
  final _formKeyClient = GlobalKey<FormState>();
  String error = '';
  bool loading = false;
  String name = '';
  String biographie = '';
  String nationalite = '';
  String genre = '';
  int age = 0;
  String niveau = '';
  String nombre = '';
  String specialite = '';
  String equipment = '';
  int rs = 0;
  String langue = '';
  String localite = '';
  String organisme = '';
  String capacite = '';
  String type = '';
  String activities = '';
  String description = '';
  String meilleure = '';
  String especes = '';
  String photo = '';
  String tarifs = '';
  int contact = 0;

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      child: loading
          ? Loading()
          : IndexedStack(
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
                                  image:
                                      new AssetImage('images/commuaute_bg.png'),
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
                                padding: const EdgeInsets.fromLTRB(
                                    25.0, 55.0, 25.0, 20.0),
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
                                padding: const EdgeInsets.fromLTRB(
                                    25.0, 25.0, 25.0, 20.0),
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
                                  image:
                                      new AssetImage('images/commuaute_bg.png'),
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
                      Form(
                        key: _formKeyLogin,
                        child: Column(
                          children: [
                            new ListTile(
                              title: Material(
                                elevation: 8.0,
                                borderRadius: BorderRadius.circular(30),
                                child: new TextFormField(
                                  validator: (input) {
                                    if (input.isEmpty || !input.contains("@")) {
                                      return '      Email is not valid';
                                    } else {
                                      return null;
                                    }
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  onChanged: (input) {
                                    setState(() {
                                      _email = input;
                                    });
                                  },
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 6),
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
                                child: new TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (input) {
                                    if (input.length < 6) {
                                      return '    Password must be at least 6 chars';
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (input) {
                                    setState(() {
                                      _password = input;
                                    });
                                  },
                                  obscureText: true,
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 6),
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
                              child: Text(
                                'mot de passe oublié ?',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 12,
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _currentIndex = 3;
                                });
                              },
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Center(
                                    child: Text(error,
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 14)))),
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
                                  onTap: () async {
                                    if (_formKeyLogin.currentState.validate()) {
                                      setState(() => loading = true);
                                      dynamic result = await _auth.login(
                                        email: _email,
                                        password: _password,
                                      );
                                        if (result == null) {
                                        setState(() => error = 'Incorrect email or password');
                                      } else if (result == User){
                                        // Navigator.of(context).pushReplacementNamed('/login');
                                        setState(() => error = '');
                                      }else print('something went wrong');
                                        print(result);
                                      setState(() => loading = false);
                                    }
                                  }),
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
                                  image:
                                      new AssetImage('images/commuaute_bg.png'),
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
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 20.0),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 8, 10, 2),
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
                              onTap: () {
                                setState(() {
                                  _isSelectedProffessional = true;
                                  _isSelectedPlonger = false;
                                  _currentIndexRegister = 0;
                                });
                              },
                            ),
                            new InkWell(

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
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 8, 10, 2),
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
                              onTap: () {
                                setState(() {
                                  _isSelectedProffessional = false;
                                  _isSelectedPlonger = true;
                                  _currentIndexRegister = 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      new IndexedStack(
                        index: _currentIndexRegister,
                        children: [
                          new Form(
                            key: _formKeyRegister,
                            child: new Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
                                        validator: (input) {
                                          if (input.isEmpty ||
                                              !input.contains("@")) {
                                            return '     Email is not valid';
                                          } else {
                                            return null;
                                          }
                                        },
                                        onChanged: (input) {
                                          setState(() {
                                            _emailRegister = input;
                                          });
                                        },
                                        style: TextStyle(
                                          color: Colors.blue.shade300,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'EMAIl',
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
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
                                        validator: (input) {
                                          if (input.length < 6) {
                                            return '    Password must be at least 6 chars.';
                                          } else {
                                            return null;
                                          }
                                        },
                                        onChanged: (input) {
                                          setState(() {
                                            _passwordRegister = input;
                                          });
                                        },
                                        style: TextStyle(
                                          color: Colors.blue.shade300,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'PASSWORD',
                                          hintStyle: TextStyle(
                                            fontSize: 20,
                                            color: Colors.blue.shade300,
                                          ),
                                        ),
                                        obscureText: true,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
                                        onChanged: (input) {
                                          setState(() {
                                            localite = input;
                                          });
                                        },
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
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            organisme = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
                                        onChanged: (input) {
                                          setState(() {
                                            capacite = input;
                                          });
                                        },
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
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
                                        onChanged: (input) {
                                          setState(() {
                                            type = input;
                                          });
                                        },
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
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            niveau = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            activities = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            description = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            langue = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
                                        style: TextStyle(
                                          color: Colors.blue.shade300,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText:
                                              'ESPÈCES MARINE INCONTOURNABLES',
                                          hintStyle: TextStyle(
                                            fontSize: 20,
                                            color: Colors.blue.shade300,
                                          ),
                                        ),
                                        onChanged: (input) {
                                          setState(() {
                                            especes = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
                                        style: TextStyle(
                                          color: Colors.blue.shade300,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText:
                                              'MEILLEURE PÉRIODE POUR PLONGER',
                                          hintStyle: TextStyle(
                                            fontSize: 20,
                                            color: Colors.blue.shade300,
                                          ),
                                        ),
                                        onChanged: (input) {
                                          setState(() {
                                            meilleure = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 0.0),
                                      child: new ListTile(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                                        leading: Text('PHOTO*',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.blue.shade300,
                                            ),
                                            ),
                                          trailing: Icon(
                                              MyFlutterApp.upload,
                                              size: 18,
                                              color: Colors.blue.shade300,
                                            ),
                                          onTap: (){},

                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            tarifs = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (val) {
                                          setState(() {
                                            contact = val as int;
                                          });
                                        },
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 20),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            rs = input as int;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 20, 25, 25),
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
                                    onTap: () async {
                                      if (_formKeyRegister.currentState
                                          .validate()) {
                                        setState(() => loading = true);
                                        dynamic result = await _auth.signUp(
                                          email: _emailRegister,
                                          password: _passwordRegister,
                                          role: 'pro',
                                          localite: localite,
                                          organisme: organisme,
                                          capacite: capacite,
                                          type: type,
                                          niveau: niveau,
                                          activites: activities,
                                          description: description,
                                          langue: langue,
                                          especes: especes,
                                          meilleure: meilleure,
                                          photo: photo,
                                          tarifs: tarifs,
                                          contact: contact,
                                          rs: rs,
                                        );
                                        if (result == User) {
                                          setState(() => error = '');
                                        } else {
                                          setState(() =>
                                              error = 'Incorrect informations');
                                        }
                                        setState(() => loading = false);
                                      }
                                    },
                                  ),
                                ),
                                new Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Center(
                                        child: Text(error,
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 12)))),
                              ],
                            ),
                          ),
                          new Form(
                            key: _formKeyClient,
                            child: new Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        validator: (input) {
                                          if (input
                                              .contains(new RegExp(r'[0-9]'))) {
                                            return 'please enter a valid name';
                                          } else
                                            return null;
                                        },
                                        onChanged: (input) {
                                          setState(() {
                                            name = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
                                        validator: (input) {
                                          if (input.isEmpty ||
                                              !input.contains('@')) {
                                            return '    Email is not valid';
                                          } else {
                                            return null;
                                          }
                                        },
                                        onChanged: (input) {
                                          setState(() {
                                            _emailClient = input;
                                          });
                                        },
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
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
                                        validator: (input) {
                                          if (input.length < 6) {
                                            return '    Password must be at least 6 chars';
                                          } else {
                                            return null;
                                          }
                                        },
                                        onChanged: (input) {
                                          setState(() {
                                            _passwordClient = input;
                                          });
                                        },
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
                                        obscureText: true,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            biographie = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            nationalite = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                          onChanged: (input) {
                                            setState(() {
                                              genre = input;
                                            });
                                          }),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            age = input as int;
                                          });
                                        },
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            niveau = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            nombre = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            specialite = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            equipment = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            rs = input as int;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 20),
                                  child: new Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(29),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new TextFormField(
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
                                        onChanged: (input) {
                                          setState(() {
                                            langue = input;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 20, 25, 25),
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
                                    onTap: () async {
                                      if (_formKeyClient.currentState
                                          .validate()) {
                                        setState(() => loading = true);
                                        dynamic result = await _auth.signUp(
                                          role: 'user',
                                          email: _emailClient,
                                          password: _passwordClient,
                                          name: name,
                                          biographie: biographie,
                                          nationality: nationalite,
                                          genre: genre,
                                          age: age,
                                          niveau: niveau,
                                          nombre: nombre,
                                          specialite: specialite,
                                          equipment: equipment,
                                          rs: rs,
                                        );
                                        if (result == User) {
                                        } else {
                                          setState(() => error =
                                              'Informations are not correct');
                                        }
                                        setState(() => loading = false);
                                      }
                                    },
                                  ),
                                ),
                                new Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Center(
                                        child: Text(error,
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 12)))),
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
                                  image:
                                      new AssetImage('images/commuaute_bg.png'),
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
                        child: Form(
                          key: _formKey,
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
                                    child: new TextFormField(
                                         onSaved: (newEmail){
                                        _emailResetPassword = newEmail;
                                      },
                                      textAlign: TextAlign.start,
                                      decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left:8),
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
                                        'réinitialiser',
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
                                    _passwordReset();
                                    print(_emailResetPassword);
                                  },
                                ),
                              ),
                              if(errorMessage!= null)
                              Center(child: Text(errorMessage, style:TextStyle(color:Colors.red, fontWeight: FontWeight.bold))),
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
                                    setState(() {
                                      _currentIndex = 0;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      currentIndex: 3,
      isSelectedHome: false,
      isSelectedSecond: false,
      isSelectedThird: false,
      isSelectedFourth: true,
    );
  }
  String _emailResetPassword;
  Future _passwordReset() async {
    try {
      _formKey.currentState.save();
      await _authResetPassword.sendPasswordResetEmail(email: _emailResetPassword);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return ResetPassword(message: 'Veuillez ouvrir votre email pour réinitialiser votre mot de passe.',);
        }),
      );
    } on Exception catch (e) {
      setState(() {
        if(e.toString() == '[firebase_auth/invalid-email] The email address is badly formatted.'){
          errorMessage = 'Email adress is not correct. Please write a correct one!';
        }else if(e.toString() == '[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.'){
          errorMessage = 'This email is not linked to an account. Please register!';
        }else {
          errorMessage = 'There was a problem. Please check your internet connection and restart the app.';
        }
        print(e.toString());
      });
    }
  }
  final _authResetPassword = FirebaseAuth.instance;
}
