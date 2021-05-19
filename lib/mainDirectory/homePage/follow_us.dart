import 'package:flutter/material.dart';

import '../tools/my_flutter_app_icons.dart';

class FollowUsClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'NOUS SUIVRE',
          style: new TextStyle(fontSize: 18.0, color: Colors.green),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () => debugPrint('You followed us on Facebook!'),
                icon: Icon(
                  MyFlutterApp.facebook,
                  color: Colors.green,
                )),
            IconButton(
                onPressed: () => debugPrint('You followed us on instagram!'),
                icon: Icon(
                  MyFlutterApp.instagram,
                  color: Colors.green,
                )),
          ],
        )
      ],
    );
  }
}
