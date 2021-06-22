import 'package:flutter/material.dart';
import 'package:project/firbase_auth.dart';
import 'package:project/mainDirectory/AppBar.dart';

class LoggedIn extends StatefulWidget {
  const LoggedIn({Key key}) : super(key: key);

  @override
  _LoggedInState createState() => _LoggedInState();
}

class _LoggedInState extends State<LoggedIn> {
  final FirebaseLogin _firebaseLogin = FirebaseLogin();

  @override
  Widget build(BuildContext context) {

    return MainScreen(
      currentIndex: 3,
      isSelectedHome: false,
      isSelectedSecond: false,
      isSelectedThird: false,
      isSelectedFourth: true,
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
                            'BIENVENUE PRO !',
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
                    Navigator.of(context).popAndPushNamed('/profilepro');
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
                      child: new Text(
                        "Mon Centre",
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
                    Navigator.of(context).popAndPushNamed('/centre');
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
                        "Mes Infos*",
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
                    Navigator.of(context).popAndPushNamed('/infos');
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

            ),
          ],
        ),
      ),
    );
  }

}
