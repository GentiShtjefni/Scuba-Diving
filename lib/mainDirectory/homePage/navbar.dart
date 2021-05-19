import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: [
          new Padding(padding: const EdgeInsets.all(10.0)),
          DrawerHeader(
            child: new Text(
              'SideBar',
              style: new TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 20.5,
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('hello'),
            onTap: () => debugPrint('first tapped'),
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('user'),
            onTap: () => debugPrint('user tapped'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('settings'),
            onTap: () => debugPrint('settings tapped'),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
