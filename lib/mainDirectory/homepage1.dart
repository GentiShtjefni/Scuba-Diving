import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/mainDirectory/fourthTab/fourthTab.dart';
import 'package:project/mainDirectory/secondTab/secondPage.dart';
import 'package:project/mainDirectory/thirdTab/thirdTab.dart';

import '../mainDirectory/fourthTab/fourthTab.dart';
import '../mainDirectory/homePage/homePage.dart';
import '../mainDirectory/homePage/navbar.dart';
// import 'package:firebase_core/firebase_core.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ScubaDiving',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State with AutomaticKeepAliveClientMixin {
  PageController _pageController = PageController(initialPage: 0);

  // final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return new SafeArea(
      child: Navigator(
        onGenerateRoute: (RouteSettings settings){
          return new MaterialPageRoute(
            settings: settings,
            builder:(BuildContext context){
              return new  Scaffold(
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
                body: PageView(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  children: [
                    HomePage(),
                    SecondTab(),
                    ThirdTab(),
                    FourthTab(),
                  ],

                  // physics: NeverScrollableScrollPhysics(),
                ),
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: _currentIndex,
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
                  onTap: _onItemTapped,
                ),
              );
            }
          );
        },

      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onItemTapped(int currentIndex) {
    setState(() {
      _pageController.animateToPage(currentIndex,
          duration: Duration(milliseconds: 400), curve: Curves.ease);
    });
  }
}
