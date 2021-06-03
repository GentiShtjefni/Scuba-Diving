
import 'package:flutter/material.dart';
// import 'package:project/mainDirectory/homePage/SliderClassListingPage.dart';
import 'package:project/mainDirectory/homePage/navbar.dart';
import 'package:project/mainDirectory/tools/my_flutter_app_icons.dart';

import '../tools/borderradius.dart';

class SearchBarClass extends StatefulWidget {
  @override
  _SearchBarClassState createState() => _SearchBarClassState();
}

class _SearchBarClassState extends State<SearchBarClass> {
  var searchFieldController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(22.0),
      child: new TextField(
        // autofocus: true,
        controller: searchFieldController,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: 'Recherche par Nom, Lieu',
          hintStyle: TextStyle(
            fontSize: 20,
          ),
          suffixIcon: new Container(
            margin: const EdgeInsets.all(5.1),
            decoration: new BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0)),
            ),
            child: IconButton(
              onPressed: () {
                var router =
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return new ResultPage(
                    search: searchFieldController.text,
                  );
                });
                Navigator.of(context).push(router);
              },
              icon: Icon(
                Icons.search,
                size: 24.0,
                color: Colors.white,
              ),
              highlightColor: Colors.green.shade900,
            ),
          ),
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 22.0, vertical: 15.0),
        ),
      ),
    );
  }
}

class ResultPage extends StatefulWidget {
  final String search;

  const ResultPage({Key key, this.search}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context1) {
    return Scaffold(
      endDrawer: NavDrawer(),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color(0xff94e9ff),
                Color(0xff4da9ef),
              ])),
        ),
        title: new Image.asset(
          'images/logo.png',
          cacheWidth: 50,
          cacheHeight: 50,
          width: 50.0,
          height: 50.0,
        ),
      ),
      body: ListView(
        children: [
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('images/bg1.png'),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new TextButton(
                        onPressed: () => Navigator.pop(context1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            new Icon(Icons.arrow_left),
                            new Text(
                              'back',
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )),
                    new Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    new Text("results for '${widget.search}'"),
                  ],
                ),
                new InkWell(
                  onTap: () {
                    if (widget.search != ' ') {
                      if (widget.search == 'Scuba') {
                        var router1 = new MaterialPageRoute(
                            builder: (BuildContext context) {
                          return new ResultPageNotExtended();
                        });
                        Navigator.of(context).push(router1);
                      } else if (widget.search == 'Diving') {
                        var router2 = new MaterialPageRoute(
                            builder: (BuildContext context) {
                          return new ResultPageExtended();
                        });
                        Navigator.of(context).push(router2);
                      }else {
                        var router3 = new MaterialPageRoute(
                            builder: (BuildContext context) {
                              return new ResultPageNotExtended();
                            });
                        Navigator.of(context).push(router3);
                      }
                    }else if(widget.search == ' '){
                      createAlertDialog(context);
                      print('nothing');
                    }
                  },
                  child: new Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.grey.shade200,
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: new Text(
                                'Nom 1',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        new Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: new Image(
                                image: AssetImage('images/icons/location.png'),
                                width: 15,
                                height: 15,
                              ),
                            ),
                            new Text(
                              'Amérique du N',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20)),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: new Image(
                                image: AssetImage('images/icons/depth.png'),
                                width: 15,
                                height: 15,
                              ),
                            ),
                            new Text(
                              'Depth',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        new Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: new Image(
                                image: AssetImage(
                                    'images/icons/courant_inexistan.png'),
                                width: 70,
                                height: 70,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: new Image(
                                image: AssetImage('images/icons/en_bateau.png'),
                                width: 70,
                                height: 70,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: new Image(
                                image: AssetImage('images/icons/profondeur.png'),
                                width: 70,
                                height: 70,
                              ),
                            ),
                          ],
                        ),
                        new Container(
                          margin: EdgeInsets.all(8.0),
                          height: 212,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: ResizeImage(AssetImage('images/slider1.png'),
                                height: 212,),
                              fit: BoxFit.fill,

                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
    ]
      ),
    );
  }


  createAlertDialog(BuildContext context) {
    return showDialog(context: context, builder: (context){
    return new AlertDialog(
      title: const Text('Please enter something on the search bar.'),
      actions: [
        new TextButton(onPressed: () => Navigator.of(context).pop(),
            child: Text('ok')),
      ],
    );
 });
  }
}

class ResultPageNotExtended extends StatefulWidget {
  const ResultPageNotExtended({Key key}) : super(key: key);

  @override
  _ResultPageNotExtendedState createState() => _ResultPageNotExtendedState();
}

class _ResultPageNotExtendedState extends State<ResultPageNotExtended> {
  bool _isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavDrawer(),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color(0xff94e9ff),
                Color(0xff4da9ef),
              ])),
        ),
        title: new Image.asset(
          'images/logo.png',
          cacheHeight: 50,
          cacheWidth: 50,
          width: 50.0,
          height: 50.0,
        ),
      ),
      body: new SafeArea(
        child: new ListView(
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    new TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Row(
                        children: [
                          new Icon(Icons.arrow_left),
                          new Text('back',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 13,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                new Center(
                  child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: new AssetImage('images/nom_de_cite.png'),
                              fit: BoxFit.contain),
                        ),
                        child: new Text(
                          'Nom du site',
                          style: new TextStyle(
                              fontSize: 20,
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.w900),
                        ),
                      )),
                ),
              ],
            ),
            new Center(
              child: new Image(
                image: AssetImage('images/peshqittt.png'),
                height: 40,
                width: 120,
              ),
            ),
            // SliderClassListingPage(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new Column(
                        children: [
                          new Image(
                              image: AssetImage('images/icons/nuit.png'),
                              height: 90,
                              width: 90),
                          new Text('nuit',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      new Column(
                        children: [
                          new Image(
                              image: AssetImage('images/icons/requin.png'),
                              height: 90,
                              width: 90),
                          new Text('requin',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      new Column(
                        children: [
                          new Image(
                              image: AssetImage('images/icons/epave.png'),
                              height: 90,
                              width: 90),
                          new Text('épave',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              )),
                        ],
                      ),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new Column(
                        children: [
                          new Image(
                              image:
                                  AssetImage('images/icons/temperature_11.png'),
                              height: 90,
                              width: 90),
                          new Text('température eau',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 12,
                              )),
                          new Text('entre 0oC et 10oC',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 12,
                              )),
                        ],
                      ),
                      new Column(
                        children: [
                          new Image(
                              image: AssetImage(
                                  'images/icons/courant_inexistan.png'),
                              height: 90,
                              width: 90),
                          new Text('courant inexistan',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      new Column(
                        children: [
                          new Image(
                              image:
                                  AssetImage('images/icons/visibilite_0.png'),
                              height: 90,
                              width: 90),
                          new Text('visibilité 0 à 10m',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              ))
                        ],
                      ),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new Column(
                        children: [
                          new Image(
                              image: AssetImage('images/icons/seul.png'),
                              height: 90,
                              width: 90),
                          new Text('seul',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      new Column(
                        children: [
                          new Image(
                              image: AssetImage('images/icons/en_bateau.png'),
                              height: 90,
                              width: 90),
                          new Text('en bateau',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              ))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 10),
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
                      'CONTACT',
                      style: new TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        decorationThickness: 3.0,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
              child: new ListTile(
                  title: new Container(
                      height: 50,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Color(0xff59a5da),
                                Color(0xff60af6c),
                              ]),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: new Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: new Image(
                                image: AssetImage('images/penaa.png'),
                                fit: BoxFit.cover),
                          ),
                          new Text('Je donne mon avis',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ))
                        ],
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: Container(
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
                child: new TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  // expands: true,
                  decoration: InputDecoration(
                    hintText: 'Ecrire ici',
                    enabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),

                  ),
                ),
              ),
            ),
            new Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 28.0),
              child: new InkWell(
                child: new Container(
                  height: 90,
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff4da9ef),
                          Color(0xff94e9ff),
                        ]),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: new Icon(
                      MyFlutterApp.heart,
                      color: _isFavourite ? Colors.red : Colors.white,
                      size: 50,
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    _isFavourite = !_isFavourite;
                  });
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class ResultPageExtended extends StatefulWidget {
  const ResultPageExtended({Key key}) : super(key: key);

  @override
  _ResultPageExtendedState createState() => _ResultPageExtendedState();
}

class _ResultPageExtendedState extends State<ResultPageExtended> {
  bool _isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavDrawer(),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color(0xff94e9ff),
                Color(0xff4da9ef),
              ])),
        ),
        title: new Image.asset(
          'images/logo.png',
          cacheHeight: 50,
          cacheWidth: 50,
          width: 50.0,
          height: 50.0,
        ),
      ),
      body: new SafeArea(
        child: new ListView(
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    new TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Row(
                        children: [
                          new Icon(Icons.arrow_left),
                          new Text('back',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 13,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                new Center(
                  child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: new AssetImage('images/nom_de_cite.png'),
                              fit: BoxFit.contain),
                        ),
                        child: new Text(
                          'Nom du site',
                          style: new TextStyle(
                              fontSize: 20,
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.w900),
                        ),
                      )),
                ),
              ],
            ),
            new Center(
              child: new Image(
                image: AssetImage('images/peshqittt.png'),
                height: 40,
                width: 120,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: new Container(
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.lightBlueAccent,
                  ),
                  child: Column(
                    children: [
                      Center(
                          child: new Text('GPS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                              ))),
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 28.0),
                        child: new Image(
                          image: AssetImage('images/icons/location.png'),
                          height: 90,
                          fit: BoxFit.cover,
                          color: Colors.white,
                        ),
                      )),
                    ],
                  )),
            ),
            // SliderClassListingPage(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new Column(
                        children: [
                          new Image(
                              image: AssetImage('images/icons/nuit.png'),
                              height: 90,
                              width: 90),
                          new Text('nuit',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      new Column(
                        children: [
                          new Image(
                              image: AssetImage('images/icons/requin.png'),
                              height: 90,
                              width: 90),
                          new Text('requin',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      new Column(
                        children: [
                          new Image(
                              image: AssetImage('images/icons/epave.png'),
                              height: 90,
                              width: 90),
                          new Text('épave',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              )),
                        ],
                      ),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new Column(
                        children: [
                          new Image(
                              image:
                                  AssetImage('images/icons/temperature_11.png'),
                              height: 90,
                              width: 90),
                          new Text('température eau',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 12,
                              )),
                          new Text('entre 0oC et 10oC',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 12,
                              )),
                        ],
                      ),
                      new Column(
                        children: [
                          new Image(
                              image: AssetImage(
                                  'images/icons/courant_inexistan.png'),
                              height: 90,
                              width: 90),
                          new Text('courant inexistan',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      new Column(
                        children: [
                          new Image(
                              image:
                                  AssetImage('images/icons/visibilite_0.png'),
                              height: 90,
                              width: 90),
                          new Text('visibilité 0 à 10m',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              ))
                        ],
                      ),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new Column(
                        children: [
                          new Image(
                              image: AssetImage('images/icons/seul.png'),
                              height: 90,
                              width: 90),
                          new Text('seul',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      new Column(
                        children: [
                          new Image(
                              image: AssetImage('images/icons/en_bateau.png'),
                              height: 90,
                              width: 90),
                          new Text('en bateau',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                              ))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 10),
              child: ListTile(
                title: new Container(
                  alignment: Alignment.centerLeft,
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color(0xff59a5da),
                              Color(0xff60af6c),
                            ]),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: new Text('Comment y aller ?',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          )),
                    )),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
              child: new ListTile(
                  title: new Container(
                      height: 50,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Color(0xff59a5da),
                                Color(0xff60af6c),
                              ]),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: new Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: new Image(
                                image: AssetImage('images/penaa.png'),
                                fit: BoxFit.cover),
                          ),
                          new Text('Je donne mon avis',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ))
                        ],
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
              // child: Container(
              //   height: 100,
              //   decoration: BoxDecoration(
              //     border: GradientBorder.uniform(
              //         width: 3.0,
              //         gradient: LinearGradient(colors: <Color>[
              //           Color(0xff59a5da),
              //           Color(0xff60af6c)
              //         ], stops: [
              //           0.3,
              //           0.5
              //         ])),
              //     borderRadius: BorderRadius.circular(30.0),
              //   ),
              child: Container(
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
                child: new TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  // expands: true,
                  decoration: InputDecoration(
                    hintText: 'Ecrire ici',
                    enabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
              ),
            ),
            new Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 28.0),
              child: new InkWell(
                child: new Container(
                  height: 90,
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff4da9ef),
                          Color(0xff94e9ff),
                        ]),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: new Icon(
                      MyFlutterApp.heart,
                      color: _isFavourite ? Colors.red : Colors.white,
                      size: 50,
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    _isFavourite = !_isFavourite;
                  });
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
