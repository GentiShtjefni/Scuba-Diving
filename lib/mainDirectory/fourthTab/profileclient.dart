import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/mainDirectory/AppBar.dart';
import 'package:project/mainDirectory/tools/loading.dart';

class ProfileClient extends StatefulWidget {
  const ProfileClient({Key key}) : super(key: key);

  @override
  _ProfileClientState createState() => _ProfileClientState();
}

class _ProfileClientState extends State<ProfileClient> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  String name ;
  String email ;
  String biographie ;
  String nationalite ;
  String genre ;
  String niveau ;
  String specialite ;
  String equipment ;
  String langue ;
  String age ;
  String rs;

  Future getData;

  @override
  void initState() {
    super.initState();


    getData = FirebaseFirestore.instance
        .collection('users')
        .doc(auth.currentUser.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('Document sadasdsad: ${documentSnapshot.data()}');
        setState(() {
          name = (documentSnapshot.data() as Map)['name'];
          email = (documentSnapshot.data() as Map)['email'];
          biographie = (documentSnapshot.data() as Map)['biographie'];
          nationalite = (documentSnapshot.data() as Map)['nationality'];
          genre = (documentSnapshot.data() as Map)['genre'];
          niveau = (documentSnapshot.data() as Map)['niveau'];
          specialite = (documentSnapshot.data() as Map)['specialite'];
          equipment = (documentSnapshot.data() as Map)['equipment'];
          langue = (documentSnapshot.data() as Map)['langue'];
          age = (documentSnapshot.data() as Map)['age'];
          rs = (documentSnapshot.data() as Map)['rs'];
        });
      }else {
        print('Document not found');
        return null;
      }
    }
    );
  }

  TextStyle style1() {
    return TextStyle(
        color: Colors.blue.shade900, fontSize: 15, fontWeight: FontWeight.w900);
  }

  TextStyle style2() {
    return TextStyle(color: Colors.blue.shade900, fontSize: 15);
  }
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      currentIndex: 3,
      isSelectedHome: false,
      isSelectedSecond: false,
      isSelectedFourth: false,
      isSelectedThird: true,
      child: new FutureBuilder(
          future: getData,
          builder: (BuildContext context, AsyncSnapshot<dynamic>snapshot) {

            switch(snapshot.connectionState) {
              case ConnectionState.none:
                return Scaffold(body: Center(child: Text('Check your internet connection!!')));
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Loading();
              case ConnectionState.done:
                return new ListView(
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
                                    'MON PROFIL!',
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
                      padding: const EdgeInsets.fromLTRB(25, 30, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text(
                              'nom:',
                              style: style1(),
                            ),
                            Expanded(
                                child: Text(
                                  name,
                                  style: style2(),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text(
                              'email:',
                              style: style1(),
                            ),
                            Expanded(
                                child: Text(
                                  email,
                                  style: style2(),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text('biographie:', style: style1()),
                            Expanded(child: Text(biographie, style: style2())),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text('nationalite:', style: style1()),
                            Expanded(child: Text(nationalite, style: style2())),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text('age:', style: style1()),
                            Expanded(child: Text(age.toString(), style: style2())),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text('specialite:', style: style1()),
                            Expanded(child: Text(specialite, style: style2())),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text('langue:', style: style1()),
                            Expanded(child: Text(langue, style: style2())),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text('rs:', style: style1()),
                            Expanded(child: Text(rs.toString(), style: style2())),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text('equipment:', style: style1()),
                            Expanded(child: Text(equipment, style: style2())),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text('genre:', style: style1()),
                            Expanded(child: Text(genre, style: style2())),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text('niveau:', style: style1()),
                            Expanded(child: Text(niveau, style: style2())),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              default: return new Container(child: Center(child:Text('Something went Wrong. Please restart the app')));
            }
          }
      )
    );
  }
}
