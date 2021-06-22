import 'package:flutter/material.dart';
import 'package:project/mainDirectory/homePage/navbar.dart';

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  final Widget child;
  final int currentIndex;
  bool isSelectedHome = true;
  bool isSelectedSecond = false;
  bool isSelectedThird = false;
  bool isSelectedFourth = false;

  MainScreen({Key key, this.child, this.currentIndex, this.isSelectedHome, this.isSelectedSecond, this.isSelectedThird,this.isSelectedFourth}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState(
    currentIndex: currentIndex,
    isSelectedHome: isSelectedHome,
    isSelectedSecond: isSelectedSecond,
    isSelectedThird: isSelectedThird,
    isSelectedFourth: isSelectedFourth,
  );
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex;
  bool isSelectedHome;
  bool isSelectedSecond;
  bool isSelectedThird;
  bool isSelectedFourth;
  _MainScreenState(
      {this.currentIndex,
      this.isSelectedHome,
      this.isSelectedSecond,
      this.isSelectedThird,
      this.isSelectedFourth});
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('images/bg1.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: widget.child,

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
            icon: ImageIcon(
                new AssetImage('images/ikon1.png'), size: 30.0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(new AssetImage('images/ikon2.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                new AssetImage('images/communaute_icon.png')),
            label: '',
          ),
        ],
        onTap: (index) {
          _onPageChanged(index);


        },

        // onTap: _onItemTapped,
      ),

    );
  }

  void _onPageChanged(int index) {
    setState(() {
      currentIndex = index;
      pageIndex();

    });
  }
  dynamic pageIndex() {
    if (currentIndex == 0) {
      if(isSelectedHome){

      }else return Navigator.of(context).popAndPushNamed('/');
    } else if (currentIndex == 1) {
      if(isSelectedSecond){

      }else return Navigator.of(context).popAndPushNamed('/plonger');
    } else if (currentIndex == 2) {
      if(isSelectedThird){

      }else
        return Navigator.of(context).popAndPushNamed('/snorkeling');
    } else if (currentIndex == 3) {
      if(isSelectedFourth){

      }else
        return Navigator.of(context).popAndPushNamed('/login');
    } else
      if(isSelectedHome == false && isSelectedSecond == false
      && isSelectedThird == false && isSelectedFourth == false){
        if(currentIndex == 0){
          return Navigator.of(context).popAndPushNamed('/');
        }else if(currentIndex == 1){
          return Navigator.of(context).popAndPushNamed('/plonger');
        }else if(currentIndex == 2){
          return Navigator.of(context).popAndPushNamed('/snorkeling');
        }else if(currentIndex == 3){
          return Navigator.of(context).popAndPushNamed('/login');
        }else return Navigator.of(context).popAndPushNamed('/');
      }
  }
}
