import 'package:flutter/material.dart';
import 'package:project/firbase_auth.dart';
import 'package:project/mainDirectory/AppBar.dart';
import 'package:project/mainDirectory/tools/my_flutter_app_icons.dart';



class LoggedInClient extends StatelessWidget {
  LoggedInClient({Key key}) : super(key: key);
  final FirebaseLogin _firebaseLogin = FirebaseLogin();


  @override
  Widget build(BuildContext context) {
    return MainScreen(
      currentIndex: 3,
      isSelectedHome: false,
      isSelectedSecond: false,
      isSelectedFourth: true,
      isSelectedThird: false,
      child: new Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('images/bg1.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: new ListView(
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
                            'BIENVENUE PERSO!',
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
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            new ListTile(
              title: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
                child: InkWell(
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xff59a5da),
                            Color(0xff60af6c),
                          ]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: new Center(
                      child: new Text(
                        "Mon Profil",
                        style: new TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          decorationThickness: 3.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).popAndPushNamed('/profileclient');
                  },
                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
            ),
            new ListTile(
              title: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
                child: InkWell(
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xff59a5da),
                            Color(0xff60af6c),
                          ]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: new Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            "Mon ",
                            style: new TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              decorationThickness: 3.0,
                              color: Colors.white,
                            ),
                          ),
                          new Icon(MyFlutterApp.heart, color: Colors.white)
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).popAndPushNamed('/wishlist');
                  },
                ),
              ),

            ),
            new ListTile(
              title: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
                child: InkWell(
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xff59a5da),
                            Color(0xff60af6c),
                          ]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: new Center(
                      child: new Text(
                        "Mes voyages",
                        style: new TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          decorationThickness: 3.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).popAndPushNamed('/voyages');
                  },
                ),
              ),

            ),
            new ListTile(
              title: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
                child: InkWell(
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xff59a5da),
                            Color(0xff60af6c),
                          ]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: new Center(
                      child: new Text(
                        "Gérer mon abonnement",
                        style: new TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          decorationThickness: 3.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).popAndPushNamed('/settings');
                  },
                ),
              ),
            ),

              Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 5.0),
                child: InkWell(
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xff59a5da),
                            Color(0xff60af6c),
                          ]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: new Center(
                      child: new Text(
                        "Sign Out",
                        style: new TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          decorationThickness: 3.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  onTap: () async {
                    await _firebaseLogin.signOut();
                    Navigator.of(context).pushNamed('/login');
                  },
                ),
              ),


          ],
        ),
      ),
    );
  }
}
