import 'package:flutter/material.dart';

// ignore: camel_case_types
class gps_Button_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: new Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(70),
          ),
          child: ElevatedButton.icon(
            onPressed: null,
            icon: ImageIcon(
              new AssetImage('images/gps_icon.png'),
              color: Colors.blue.shade700,
            ),
            label: new Text(
              ' AUTOUR  DE  MOI',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Colors.blue.shade700,
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              )),
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.white),
              elevation: MaterialStateProperty.resolveWith((states) => 10),
            ),
          ),
        ),
      ),
    );
  }
}
