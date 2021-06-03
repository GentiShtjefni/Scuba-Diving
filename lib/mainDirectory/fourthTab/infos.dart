import 'package:flutter/material.dart';
import 'package:project/mainDirectory/homePage/navbar.dart';


class Infos extends StatefulWidget {
  const Infos({Key key}) : super(key: key);

  @override
  _InfosState createState() => _InfosState();
}

class _InfosState extends State<Infos> {
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
          child: new Center(
            child: new Text('my Infos',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 40,
              ),),
          )
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
