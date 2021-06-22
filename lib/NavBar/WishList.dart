import 'package:flutter/material.dart';
import 'package:project/mainDirectory/AppBar.dart';


class WishList extends StatefulWidget {
  const WishList({Key key}) : super(key: key);

  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      currentIndex: 0,
      isSelectedHome: false,
      isSelectedSecond: false,
      isSelectedThird: false,
      isSelectedFourth: false,

      child: new Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('images/bg1.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: new ListView(
          children: [
            new Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: new Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage('images/mes_favorites.png'),
                      fit: BoxFit.fitHeight),
                ),
                child: new Text(
                  'Mes favoris',
                  style: new TextStyle(
                      fontSize: 20,
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),

            new Padding(
              padding: const EdgeInsets.fromLTRB(20,10,20,0),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xff59a5da),
                        Color(0xff60af6c),
                      ]),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: new Center(
                  child: new Text(
                    "Préféré sites plongé",
                    style: new TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      decorationThickness: 3.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            new InkWell(
              child: new Card(
                margin: EdgeInsets.fromLTRB(20,10,20,0),
                color: Colors.grey.shade200,
                child: new Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            'Nom 1',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Image(
                            image: AssetImage('images/icons/location.png'),
                            width: 15,
                            height: 15,
                          ),
                        ),
                        new Text(
                          'Amérique du N',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 14,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20)),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Image(
                            image: AssetImage('images/icons/depth.png'),
                            width: 15,
                            height: 15,
                          ),
                        ),
                        new Text(
                          'Depth',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    new Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: new Image(
                            image: AssetImage(
                                'images/icons/courant_inexistan.png'),
                            width: 70,
                            height: 70,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: new Image(
                            image: AssetImage('images/icons/en_bateau.png'),
                            width: 70,
                            height: 70,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: new Image(
                            image: AssetImage('images/icons/profondeur.png'),
                            width: 70,
                            height: 70,
                          ),
                        ),
                      ],
                    ),
                    new Container(
                      margin: EdgeInsets.all(8.0),
                      height: 212,
                      // width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ResizeImage(AssetImage('images/slider1.png'),
                            height: 212,),
                          fit: BoxFit.fill,

                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new InkWell(
              child: new Card(
                margin: EdgeInsets.fromLTRB(20,10,20,10),
                color: Colors.grey.shade200,
                child: new Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            'Nom 2',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Image(
                            image: AssetImage('images/icons/location.png'),
                            width: 15,
                            height: 15,
                          ),
                        ),
                        new Text(
                          'Amérique du N',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 14,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20)),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Image(
                            image: AssetImage('images/icons/depth.png'),
                            width: 15,
                            height: 15,
                          ),
                        ),
                        new Text(
                          'Depth',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    new Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: new Image(
                            image: AssetImage(
                                'images/icons/courant_inexistan.png'),
                            width: 70,
                            height: 70,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: new Image(
                            image: AssetImage('images/icons/en_bateau.png'),
                            width: 70,
                            height: 70,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: new Image(
                            image: AssetImage('images/icons/profondeur.png'),
                            width: 70,
                            height: 70,
                          ),
                        ),
                      ],
                    ),
                    new Container(
                      margin: EdgeInsets.all(8.0),
                      height: 212,
                      // width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ResizeImage(AssetImage('images/slider2.png'),
                            height: 212,),
                          fit: BoxFit.fill,

                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.fromLTRB(20,10,20,0),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xff59a5da),
                        Color(0xff60af6c),
                      ]),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: new Center(
                  child: new Text(
                    "Préféré snorkeling",
                    style: new TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      decorationThickness: 3.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            new InkWell(
              child: new Card(
                margin: EdgeInsets.all(20),
                color: Colors.grey.shade200,
                child: new Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(
                            'Nom 1',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Image(
                            image: AssetImage('images/icons/location.png'),
                            width: 15,
                            height: 15,
                          ),
                        ),
                        new Text(
                          'Amérique du N',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 14,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20)),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Image(
                            image: AssetImage('images/icons/depth.png'),
                            width: 15,
                            height: 15,
                          ),
                        ),
                        new Text(
                          'Depth',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    new Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: new Image(
                            image: AssetImage(
                                'images/icons/courant_inexistan.png'),
                            width: 70,
                            height: 70,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: new Image(
                            image: AssetImage('images/icons/en_bateau.png'),
                            width: 70,
                            height: 70,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: new Image(
                            image: AssetImage('images/icons/profondeur.png'),
                            width: 70,
                            height: 70,
                          ),
                        ),
                      ],
                    ),
                    new Container(
                      margin: EdgeInsets.all(8.0),
                      height: 212,
                      // width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ResizeImage(AssetImage('images/slider3.png'),
                            height: 212,),
                          fit: BoxFit.fill,

                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.fromLTRB(20,10,20,0),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xff59a5da),
                        Color(0xff60af6c),
                      ]),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: new Center(
                  child: new Text(
                    "Préféré centre",
                    style: new TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      decorationThickness: 3.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            new Card(
              margin: EdgeInsets.all(20),
              color: Colors.grey.shade200,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all( 8.0),
                            child: new Text(
                              'Nom 1',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      new Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: new Image(image: AssetImage('images/icons/location.png'),
                                width:8,
                                height: 8
                            ),
                          ),
                          new Padding(padding: EdgeInsets.symmetric(horizontal:10),
                              child: new Text('Amérique du N')),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: new Text('NOTE'),
                          ),
                        ],
                      ),
                      new SizedBox(height: 20),
                    ],
                  ),

                ],
              ),
            ),
            new Card(
              margin: EdgeInsets.all(20),
              color: Colors.grey.shade200,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all( 8.0),
                            child: new Text(
                              'Nom 2',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      new Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: new Image(image: AssetImage('images/icons/location.png'),
                                width:8,
                                height: 8
                            ),
                          ),
                          new Padding(padding: EdgeInsets.symmetric(horizontal:10),
                              child: new Text('Amérique du S')),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: new Text('NOTE'),
                          ),
                        ],
                      ),
                      new SizedBox(height: 20),
                    ],
                  ),

                ],
              ),
            ),




          ],

        ),
      ),
    );
  }
}
