import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/mainDirectory/AppBar.dart';

class ProfilePro extends StatefulWidget {
  const ProfilePro({Key key}) : super(key: key);

  @override
  _ProfileProState createState() => _ProfileProState();
}

class _ProfileProState extends State<ProfilePro> {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  String email;
  String localite;
  String organisme;
  String capacite;
  String type;
  String niveau;
  String activities;
  String description;
  String langue;
  String especes;
  String meilleure;
  String tarifs;
  String contact;
  String rs;



  Future getData() async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(_auth.currentUser.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
          if(documentSnapshot.exists){
            print('Places: ${documentSnapshot.data()}');
            setState(() {
              email = (documentSnapshot.data()as Map)['email'];
              localite = (documentSnapshot.data()as Map)['localite'];
              organisme = (documentSnapshot.data()as Map)['organisme'];
              capacite = (documentSnapshot.data()as Map)['capacite'];
              type = (documentSnapshot.data()as Map)['type'];
              niveau = (documentSnapshot.data()as Map)['niveau'];
              activities = (documentSnapshot.data()as Map)['activities'];
              description = (documentSnapshot.data()as Map)['description'];
              langue = (documentSnapshot.data()as Map)['langue'];
              especes = (documentSnapshot.data()as Map)['especes'];
              meilleure = (documentSnapshot.data()as Map)['meilleure'];
              tarifs = (documentSnapshot.data()as Map)['tarifs'];
              contact = (documentSnapshot.data()as Map)['contact'];
              rs = (documentSnapshot.data()as Map)['rs'];
            });
          }else {
            print('Document not found');
            return null;
          }
    });
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
      isSelectedThird: false,
      isSelectedFourth: false,
      child: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState){
            case ConnectionState.none:
              return Center(child: Text('Something went wrong. Check your internet connection'),);
            case ConnectionState.active:
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
                          new Text(
                            'localite:',
                            style: style1(),
                          ),
                          Expanded(
                              child: Text(
                                localite,
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
                          new Text('organisme:', style: style1()),
                          Expanded(child: Text(organisme, style: style2())),
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
                          new Text('capacite:', style: style1()),
                          Expanded(child: Text(capacite, style: style2())),
                        ],
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                  //   child: Container(
                  //     color: Colors.white70,
                  //     child: new Row(
                  //       children: [
                  //         new Text('age:', style: style1()),
                  //         Expanded(child: Text(age.toString(), style: style2())),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                    child: Container(
                      color: Colors.white70,
                      child: new Row(
                        children: [
                          new Text('type de plongee proposee:', style: style1()),
                          Expanded(child: Text(type, style: style2())),
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
                          new Text('niveau requis:', style: style1()),
                          Expanded(child: Text(niveau, style: style2())),
                        ],
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                  //   child: Container(
                  //     color: Colors.white70,
                  //     child: new Row(
                  //       children: [
                  //         new Text('rs:', style: style1()),
                  //         Expanded(child: Text(rs.toString(), style: style2())),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                    child: Container(
                      color: Colors.white70,
                      child: new Row(
                        children: [
                          new Text('Activites proposes:', style: style1()),
                          Expanded(child: Text(activities, style: style2())),
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
                          new Text('description:', style: style1()),
                          Expanded(child: Text(description, style: style2())),
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
                          new Text('langue parlee:', style: style1()),
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
                          new Text('especes marine:', style: style1()),
                          Expanded(child: Text(especes, style: style2())),
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
                          new Text('meilleure:', style: style1()),
                          Expanded(child: Text(meilleure, style: style2())),
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
                          new Text('tarifs:', style: style1()),
                          Expanded(child: Text(tarifs, style: style2())),
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
                          new Text('contact info:', style: style1()),
                          Expanded(child: Text(contact, style: style2())),
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
                          Expanded(child: Text(rs, style: style2())),
                        ],
                      ),
                    ),
                  ),
                ],
              ) ;
              default:
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
                            new Text(
                              'localite:',
                              style: style1(),
                            ),
                            Expanded(
                                child: Text(
                                  localite,
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
                            new Text('organisme:', style: style1()),
                            Expanded(child: Text(organisme, style: style2())),
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
                            new Text('capacite:', style: style1()),
                            Expanded(child: Text(capacite, style: style2())),
                          ],
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                    //   child: Container(
                    //     color: Colors.white70,
                    //     child: new Row(
                    //       children: [
                    //         new Text('age:', style: style1()),
                    //         Expanded(child: Text(age.toString(), style: style2())),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text('type de plongee proposee:', style: style1()),
                            Expanded(child: Text(type, style: style2())),
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
                            new Text('niveau requis:', style: style1()),
                            Expanded(child: Text(niveau, style: style2())),
                          ],
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                    //   child: Container(
                    //     color: Colors.white70,
                    //     child: new Row(
                    //       children: [
                    //         new Text('rs:', style: style1()),
                    //         Expanded(child: Text(rs.toString(), style: style2())),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        color: Colors.white70,
                        child: new Row(
                          children: [
                            new Text('Activites proposes:', style: style1()),
                            Expanded(child: Text(activities, style: style2())),
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
                            new Text('description:', style: style1()),
                            Expanded(child: Text(description, style: style2())),
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
                            new Text('langue parlee:', style: style1()),
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
                            new Text('especes marine:', style: style1()),
                            Expanded(child: Text(especes, style: style2())),
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
                            new Text('meilleure:', style: style1()),
                            Expanded(child: Text(meilleure, style: style2())),
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
                            new Text('tarifs:', style: style1()),
                            Expanded(child: Text(tarifs, style: style2())),
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
                            new Text('contact info:', style: style1()),
                            Expanded(child: Text(contact, style: style2())),
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
                            Expanded(child: Text(rs, style: style2())),
                          ],
                        ),
                      ),
                    ),
                  ],
                ) ;
          }
        },
      )
    );
  }
}
