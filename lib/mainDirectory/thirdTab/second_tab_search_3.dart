import 'package:flutter/material.dart';

class SearchBarThird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: new Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(22.0),
        child: new TextField(
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            fillColor: Colors.white,
            hintText: 'Nom centre ou site de plongee',
            hintStyle: TextStyle(
              color: Colors.blue,
              fontSize: 16,
            ),
            suffixIcon: new Container(
              margin: const EdgeInsets.all(5.1),
              decoration: new BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0)),
              ),
              child: IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.search,
                  size: 24.0,
                  color: Colors.white,
                ),
                highlightColor: Colors.green.shade900,
              ),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 20, left: 8),
          ),
        ),
      ),
    );
  }
}
