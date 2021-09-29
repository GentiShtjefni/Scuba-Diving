import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/NavBar/Recherche.dart';
import 'package:project/mainDirectory/fourthTab/fourthTab.dart';
import 'package:project/mainDirectory/fourthTab/loggedInClient.dart';
import 'package:project/mainDirectory/secondTab/secondPage.dart';
import 'package:project/mainDirectory/thirdTab/thirdTab.dart';
import 'NavBar/Aide.dart';
import 'NavBar/Enregister.dart';
import 'NavBar/Meteo.dart';
import 'NavBar/WishList.dart';
import 'NavBar/settings.dart';
import 'mainDirectory/fourthTab/LoggedIn.dart';
import 'mainDirectory/fourthTab/ProfilePro.dart';
import 'mainDirectory/fourthTab/infos.dart';
import 'mainDirectory/fourthTab/monCentre.dart';
import 'mainDirectory/fourthTab/profileclient.dart';
import 'mainDirectory/fourthTab/voyages.dart';
import 'mainDirectory/homePage/homePage.dart';
import 'mainDirectory/tools/loading.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ScubaApp());
}

class ScubaApp extends StatelessWidget {
  final Future<FirebaseApp> _future = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyDiveToGo',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text('Error1 ${snapshot.error}'),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return AuthWrapper();
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Loading();
          }
          return Text('Something went wrong. Please restart the App');
        },
      ),
    );
  }
}

String role2;

class AuthWrapper extends StatefulWidget {
  AuthWrapper({Key key}) : super(key: key);

  @override
  _AuthWrapperState createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<Widget> getRole() async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(auth.currentUser.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('Document data: ${documentSnapshot.data()}');
        role2 = (documentSnapshot.data() as Map)['role'];
        print(role2);
        if (role2 == "user") {
        } else if (role2 == 'pro') {
        } else
          return Scaffold(body: new Center(child: Text('Role not found')));
      } else {
        print('Document does not exist on the database');
      }
      return Scaffold(body: new Center(child: Text('Role not found')));
    });
  }
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          User user = snapshot.data;

          if (user == null) {
            return HomeScreen();
          } else
            return FutureBuilder(
                future: getRole(),
                builder: (BuildContext context, AsyncSnapshot<Widget> widget) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Loading();
                  } else if (snapshot.hasError) {
                    print(snapshot.error);
                  }
                  if (snapshot.hasData) {
                    if (role2 == 'user') {
                      return HomeScreenLoggedInClient();
                    } else if (role2 == 'pro') {
                      return HomeScreenLoggedInPro();
                    } else
                      return Scaffold(
                        body: Center(
                          child: Loading(),
                        ),
                      );
                  }

                  return Loading();
                });
        }
        return Loading();
      },
    );
  }
}

class HomeScreenLoggedInPro extends StatelessWidget {
  const HomeScreenLoggedInPro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MyDiveToGo',
      debugShowCheckedModeBanner: false,
      // home: new Homepage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/plonger': (context) => SecondClassTab(),
        '/snorkeling': (context) => ThirdTab(),
        '/login': (context) => LoggedIn(),
        '/recherche': (context) => Recherche(),
        '/wishlist': (context) => WishList(),
        '/enregister': (context) => Enregister(),
        '/meteo': (context) => Meteo(),
        '/settings': (context) => Settingss(),
        '/aide': (context) => Aide(),
        '/profilepro': (context) => ProfilePro(),
        '/profileclient': (context) => ProfileClient(),
        '/centre': (context) => Centre(),
        '/infos': (context) => Infos(),
        '/voyages': (context) => Voyages(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MyDiveToGo',
      debugShowCheckedModeBanner: false,
      // home: new Homepage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/plonger': (context) => SecondClassTab(),
        '/snorkeling': (context) => ThirdTab(),
        '/login': (context) => FourthTab(),
        '/recherche': (context) => Recherche(),
        '/wishlist': (context) => WishList(),
        '/enregister': (context) => Enregister(),
        '/meteo': (context) => Meteo(),
        '/settings': (context) => Settingss(),
        '/aide': (context) => Aide(),
        '/profilepro': (context) => ProfilePro(),
        '/profileclient': (context) => ProfileClient(),
        '/centre': (context) => Centre(),
        '/infos': (context) => Infos(),
        '/voyages': (context) => Voyages(),
      },
    );
  }
}

class HomeScreenLoggedInClient extends StatelessWidget {
  const HomeScreenLoggedInClient({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MyDiveToGo',
      debugShowCheckedModeBanner: false,
      // home: new Homepage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/plonger': (context) => SecondClassTab(),
        '/snorkeling': (context) => ThirdTab(),
        '/login': (context) => LoggedInClient(),
        '/recherche': (context) => Recherche(),
        '/wishlist': (context) => WishList(),
        '/enregister': (context) => Enregister(),
        '/meteo': (context) => Meteo(),
        '/settings': (context) => Settingss(),
        '/aide': (context) => Aide(),
        '/profilepro': (context) => ProfilePro(),
        '/profileclient': (context) => ProfileClient(),
        '/centre': (context) => Centre(),
        '/infos': (context) => Infos(),
        '/voyages': (context) => Voyages(),
      },
    );
  }
}
