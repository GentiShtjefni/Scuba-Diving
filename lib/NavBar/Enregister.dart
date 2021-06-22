import 'package:flutter/material.dart';
import 'package:project/mainDirectory/AppBar.dart';
import 'package:project/NavBar/EnregisterCentre.dart';
import 'package:project/NavBar/enregisterSite.dart';

class Enregister extends StatefulWidget {
  const Enregister({Key key}) : super(key: key);

  @override
  _EnregisterState createState() => _EnregisterState();
}

class _EnregisterState extends State<Enregister> {
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
        child: Container(
          child: new ListView(
            children: [
              Padding(
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
                    'Enregistrer',
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
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
                        'Enregister un site',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EnregisterSite()),
                  );
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
                        "Enregister un centre",
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EnregisterCentre()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}
