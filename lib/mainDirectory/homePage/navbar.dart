import 'package:flutter/material.dart';
import 'package:project/mainDirectory/tools/my_flutter_app_icons.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  int _isSelected;

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: [
          new Padding(padding: const EdgeInsets.all(10.0)),
          ListTile(
            selectedTileColor: Colors.blue,
            trailing: Icon(
              Icons.menu,
              color: Colors.blue.shade900,
              size: 40
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            tileColor: _isSelected ==1 ? Colors.blue.shade200 : Colors.white,
            title: Row(
              children: [
                Icon(Icons.search, color: Colors.blue),
                Text(
                  '  Recherche rapide',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                _isSelected = 1;
                Navigator.popAndPushNamed(context ,navBarNavigation());
              });
            },
          ),
          // Divider(
          //   thickness: 1.0,
          //   color: Colors.blue,
          // ),
          ListTile(
            tileColor: _isSelected ==2 ? Colors.blue.shade200 : Colors.white,
            title: Row(
              children: [
                Icon(MyFlutterApp.heart, color: Colors.blue),
                Text(
                  '  Wish List',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                _isSelected = 2;
                Navigator.popAndPushNamed(context ,navBarNavigation());
              });
            },
          ),
          // Divider(
          //   thickness: 1.0,
          //   color: Colors.blue,
          // ),
          ListTile(
            tileColor: _isSelected ==3 ? Colors.blue.shade200 : Colors.white,
            title: Row(
              children: [
                Image(image: AssetImage('images/icons/enregister.png'),
                height: 24,
                color: Colors.blue,),
                Text('   Enregister en lieu',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                    )),
              ],
            ),
            onTap: () {
              setState(() {
                _isSelected = 3;
                Navigator.popAndPushNamed(context ,navBarNavigation());
              });
            },
          ),
          // Divider(
          //   thickness: 1.0,
          //   color: Colors.blue,
          // ),
          ListTile(
              tileColor: _isSelected ==4 ? Colors.blue.shade200 : Colors.white,
            title: Row(
              children: [
                Icon(MyFlutterApp.cloud_sun, color: Colors.blue),
                Text('  Prévision météo',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                    )),
              ],
            ),
            onTap: () {
              setState(() {
                _isSelected = 4;
                Navigator.popAndPushNamed(context ,navBarNavigation());
              });
              }
          ),
          // Divider(
          //   thickness: 1.0,
          //   color: Colors.blue,
          // ),
          ListTile(
              tileColor: _isSelected ==5 ? Colors.blue.shade200 : Colors.white,
            title: Row(
              children: [
                Icon(Icons.settings, color: Colors.blue),
                Text('  Gestion abonnement',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                    )),
              ],
            ),
            onTap: (){
              setState(() {
                _isSelected = 5;
                Navigator.popAndPushNamed(context ,navBarNavigation());
              });
            }
          ),
          // Divider(
          //   thickness: 1.0,
          //   color: Colors.blue,
          // ),
          ListTile(
            tileColor: _isSelected ==6 ? Colors.blue.shade200 : Colors.white,
            title: Row(
              children: [
                Icon(Icons.help, color: Colors.blue),
                Text('  aide',
                    style: TextStyle(color: Colors.blue, fontSize: 24)),
              ],
            ),
            onTap: (){
              setState(() {
                _isSelected = 6;
                Navigator.popAndPushNamed(context ,navBarNavigation());
              });
            },
          ),

        ],
      ),
    );
  }
  String navBarNavigation() {
    if (_isSelected == 1){
      return "/recherche";
    }else if(_isSelected == 2){
      return "/wishlist";
    }else if(_isSelected == 3){
      return "/enregister";
    }else if(_isSelected == 4){
      return "/meteo";

    }else if(_isSelected == 5){
      return "/settings";

    }else if(_isSelected == 6){
      return "/aide";
    }else return "/";
  }
}
