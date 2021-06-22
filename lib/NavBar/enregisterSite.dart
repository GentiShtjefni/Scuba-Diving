import 'package:flutter/material.dart';
import 'package:project/NavBar/site/AutonomieDeSite.dart';
import 'package:project/NavBar/site/ConditionsDeSite.dart';
import 'package:project/NavBar/site/Lieu.dart';
import 'package:project/NavBar/site/NiveaReqius.dart';
import 'package:project/NavBar/site/Topographie.dart';
import 'package:project/NavBar/site/Type.dart';
import 'package:project/NavBar/site/VieMarineDeSite.dart';
import 'package:project/NavBar/site/typeDePlonge.dart';
import 'package:project/mainDirectory/AppBar.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';


class EnregisterSite extends StatefulWidget {
  const EnregisterSite({Key key}) : super(key: key);

  @override
  _EnregisterSiteState createState() => _EnregisterSiteState();
}

class _EnregisterSiteState extends State<EnregisterSite> {
  TextEditingController _nomController = TextEditingController();
  TextEditingController _quandYVenir = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  MainScreen(
      currentIndex: 0,
      isSelectedHome: false,
      isSelectedSecond: false,
      isSelectedThird: false,
      isSelectedFourth: false,
      child: ListView(
          children: [
            new Column(
              children: [
                new Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: new Container(
                    height: 100,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: new AssetImage('images/enregisterbg.png'),
                          fit: BoxFit.fitHeight),
                    ),
                    child: new Text(
                      'Enregistrer un site',
                      style: new TextStyle(
                          fontSize: 20,
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                new SizedBox(
                  height: 14,
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 25),
                  child: Material(
                    color:Colors.white,
                    elevation: 10,
                    borderRadius: BorderRadius.circular(30),
                    child: ListTile(

                      title: new Container(
                        height: 55,
                        width: double.infinity,

                        child: new Center(
                          child: new Text(
                            "Activer GPS ou recherche sur cart",
                            style: new TextStyle(
                              fontSize: 14,
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
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: new Container(
                    decoration: new BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff59a5da),
                            Color(0xff60af6c),
                          ]),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: new TextField(
                      controller: _nomController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 13),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: InputBorder.none,
                        hintText: 'NOM',
                        hintStyle: new TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                Lieu(),
                TypeDeSite(),
                TypeDePlonge(),
                TopographieDeSite(),
                ConditionsDeSite(),
                NiveauRequis(),
                AutonomieDeSite(),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: new Container(
                    decoration: new BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff59a5da),
                            Color(0xff60af6c),
                          ]),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: new TextField(
                      controller: _quandYVenir,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 13),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: InputBorder.none,
                        hintText: 'Quand y plonger',
                        hintStyle: new TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                VmDeSite(),
                new Padding(
                    padding: EdgeInsets.fromLTRB(20,10,20,20),
                    child: Container(
                      color: Colors.white70,
                      child: new Row(
                          children: [
                            new InkWell(
                                child: new Icon(Icons.add_a_photo,color: Colors.green,size: 24)
                            ),
                            new Text('  + Photo si abonné premium')
                          ]
                      ),
                    )
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
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
                          'ENREGISTER',
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

                    },
                  ),
                ),

              ],
            ),
          ],
      ),
    );
  }
}
