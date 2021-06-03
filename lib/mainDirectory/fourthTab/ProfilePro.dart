import 'package:flutter/material.dart';
import 'package:project/mainDirectory/homePage/navbar.dart';

class ProfilePro extends StatefulWidget {
  const ProfilePro({Key key}) : super(key: key);

  @override
  _ProfileProState createState() => _ProfileProState();
}

class _ProfileProState extends State<ProfilePro> {
  int currentIndex = 3;
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
      body: new SafeArea(
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
            child: Center(
              child: new Column(
                children: [
                  new Row(
                    children: [
                      new Text('Nom: '),
                      Expanded(child: new TextField()),
                    ],
                  ),
                  new Row(
                    children: [
                      new Text('Prénom: '),
                      Expanded(child: new TextField()),
                    ],
                  ),
                  new SizedBox(
                    height: 20,
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
                            "retourner",
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
                      Navigator.of(context).pop();
                    },
                  ),

                ],
              ),
            ),

          )),
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
