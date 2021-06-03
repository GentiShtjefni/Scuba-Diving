import 'package:flutter/material.dart';
import 'package:project/mainDirectory/homePage/navbar.dart';

class Aide extends StatefulWidget {
  const Aide({Key key}) : super(key: key);

  @override
  _AideState createState() => _AideState();
}

class _AideState extends State<Aide> {
  int currentIndex = 0;
  int _indexedStackAide = 0;
  // TextEditingController _commentController = new TextEditingController();

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
          width: 50.0,
          height: 50.0,
        ),
      ),
      body: new Container(
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
                        image: new AssetImage('images/questions.png'),
                        fit: BoxFit.fitHeight),
                  ),
                  child: new Text(
                    'Des question ?',
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              )),
            ),
            new Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: IndexedStack(index: _indexedStackAide, children: [
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new TextButton(
                      style: new ButtonStyle(
                        fixedSize: MaterialStateProperty.resolveWith(
                            (states) => Size(double.infinity, 5)),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white70),
                      ),
                      child: Text(
                        'Comment utiliser l’App',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _indexedStackAide = 1;
                        });
                      },
                    ),
                    Divider(
                      color: Colors.blueAccent,
                      height: 0,
                      thickness: 1.1,
                    ),
                    new TextButton(
                      style: new ButtonStyle(
                        fixedSize: MaterialStateProperty.resolveWith(
                            (states) => Size(double.infinity, 5)),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white70),
                      ),
                      child: Text(
                        'Politique de confidentialité',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _indexedStackAide = 2;
                        });
                      },
                    ),
                    Divider(
                      color: Colors.blueAccent,
                      height: 0,
                      thickness: 1.1,
                    ),
                    new TextButton(
                      style: new ButtonStyle(
                        fixedSize: MaterialStateProperty.resolveWith(
                            (states) => Size(double.infinity, 5)),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white70),
                      ),
                      child: Text(
                        'Nous contacter/suivre',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _indexedStackAide = 3;
                        });
                      },
                    ),
                    Divider(
                      color: Colors.blueAccent,
                      height: 0,
                      thickness: 1.1,
                    ),
                    new TextButton(
                      style: new ButtonStyle(
                        fixedSize: MaterialStateProperty.resolveWith(
                            (states) => Size(double.infinity, 5)),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white70),
                      ),
                      child: Text(
                        'Signalement',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _indexedStackAide = 4;
                        });
                      },
                    ),
                    Divider(
                      color: Colors.blueAccent,
                      height: 0,
                      thickness: 1.1,
                    ),
                    new TextButton(
                      style: new ButtonStyle(
                        fixedSize: MaterialStateProperty.resolveWith(
                            (states) => Size(double.infinity, 5)),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white70),
                      ),
                      child: Text(
                        '...',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _indexedStackAide = 5;
                        });
                      },
                    ),
                    Divider(
                      color: Colors.blueAccent,
                      height: 0,
                      thickness: 1.1,
                    ),
                  ],
                ),
                new Column(
                  children: [
                    new Center(
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _indexedStackAide = 0;

                            });

                          },
                          child: Text('back')),
                    ),
                  ],
                ),
                new Column(
                  children: [
                    new Center(
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _indexedStackAide = 0;


                            });
                          },
                          child: Text('back')),
                    ),
                  ],
                ),
                new Column(
                  children: [
                    new Center(
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _indexedStackAide = 0;


                            });                          },
                          child: Text('back')),
                    ),
                  ],
                ),
                new Column(
                  children: [
                    new Center(
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _indexedStackAide = 0;


                            });                          },
                          child: Text('back')),
                    ),
                  ],
                ),
                new Column(
                  children: [
                    new Center(
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _indexedStackAide = 0;


                            });                          },
                          child: Text('back')),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Color(0xff94e9ff),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(new AssetImage('images/ikon1.png'), size: 30.0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(new AssetImage('images/ikon2.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(new AssetImage('images/communaute_icon.png')),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
            Navigator.of(context).pushNamed(pageIndex());
          });
        },
        // onTap: _onItemTapped,
      ),
    );
  }

  String pageIndex() {
    if (currentIndex == 0) {
      return "/";
    } else if (currentIndex == 1) {
      return "/plonger";
    } else if (currentIndex == 2) {
      return "/snorkeling";
    } else if (currentIndex == 3) {
      return "/login";
    } else
      return "/";
  }
}
