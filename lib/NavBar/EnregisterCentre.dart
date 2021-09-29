import 'package:flutter/material.dart';
import 'package:project/NavBar/location.dart';
import 'package:project/NavBar/site/ActivitesProposes.dart';
import 'package:project/NavBar/site/Lieu.dart';
import 'package:project/NavBar/site/NiveauAcceptes.dart';
import 'package:project/NavBar/site/TypeIncontournable.dart';
import 'package:project/NavBar/site/VieMarineDeSite.dart';
import 'package:project/mainDirectory/AppBar.dart';
import 'package:project/mainDirectory/homePage/location.api.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';
import 'package:project/mainDirectory/tools/database.dart';

class EnregisterCentre extends StatefulWidget {
  const EnregisterCentre({Key key}) : super(key: key);

  @override
  _EnregisterCentreState createState() => _EnregisterCentreState();
}

class _EnregisterCentreState extends State<EnregisterCentre> {

  TextEditingController _nomController = TextEditingController();
  TextEditingController _quandYVenir = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      currentIndex: 0,
      isSelectedHome: false,
      isSelectedSecond: false,
      isSelectedThird: false,
      isSelectedFourth: false,
      child: ListView(
        children: [
          new Column(
            children: [
              new Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage('images/enregisterbg.png'),
                      fit: BoxFit.fitHeight),
                ),
                child: new Text(
                  'Enregistrer un centre',
                  style: new TextStyle(
                      fontSize: 20,
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.w900),
                ),
              ),
              new SizedBox(
                height: 14,
              ),
              new Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 25),
                child: Material(
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
              LocationClass(),
              TypeIncontournable(),
              NiveauAcceptes(),
              ActivitesProposes(),
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
                      hintText: 'Période pour y venir',
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
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: Container(
                    color: Colors.white70,
                    child: new Row(children: [
                      new InkWell(
                          child: new Icon(Icons.add_a_photo,
                              color: Colors.green, size: 24)),
                      new Text('  + Photo si abonné premium')
                    ]),
                  )),
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
                  onTap: () async{
                    try {
                      dynamic result = await FirebaseService().registerPlace(
                        lat: Place().lat,
                        lon: Place().lon,
                        name: _nomController.text,
                        address: Place().address,

                      );
                      if(result == null){
                        print ('something went wrong');
                      }else return AlertDialog(
                        title: Text('site was registered succesfully'),
                        actions: [
                          TextButton(onPressed: (){Navigator.pop(context);},
                              child: Text('Ok'))
                        ],
                      );
                    } on Exception catch (e) {
                      print (e.toString());
                    }
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
