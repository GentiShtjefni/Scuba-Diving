import 'package:flutter/material.dart';
import 'slide.dart';

class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                  top: 10.0, right: 10.0, bottom: 10.0, left: 10.0),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(slideList[index].imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            slideList[index].title,
            style: new TextStyle(fontSize: 18, color: Colors.blue),
          ),
          new Padding(padding: const EdgeInsets.all(5)),
        ],
      ),
    );
  }
}
