import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class BodyClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BodyClassState();
  }
}

class BodyClassState extends State {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        // new Padding(
        //   padding: const EdgeInsets.all(20.8),
        // ),
        new Container(
          margin: const EdgeInsets.all(40.0),
          width: 250.0,
          height: 250.0,
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: new Center(
            child: Column(
              children: [
                new Text(
                  "GPS",
                  style: new TextStyle(
                    fontSize: 50.0,
                  ),
                ),
                new Image(
                  image: AssetImage('images/icons/location.png'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                  alignment: FractionalOffset.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
