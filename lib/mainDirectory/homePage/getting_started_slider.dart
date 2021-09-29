import 'package:flutter/material.dart';


class SliderClass extends StatelessWidget {
  const SliderClass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Material(
                    elevation:10,
                    child: new Container(
                        child: Column(
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(image: AssetImage('images/slider1.png')),
                            )),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Center(child: Text('first image', style: TextStyle(color: Colors.blue.shade600))),
                            )
                          ],
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Material(
                    elevation:10,
                    child: new Container(
                        child: Column(
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(image: AssetImage('images/slider2.png')),
                            )),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Center(child: Text('first image', style: TextStyle(color: Colors.blue.shade600))),
                            )
                          ],
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Material(
                    elevation:10,
                    child: new Container(
                        child: Column(
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(image: AssetImage('images/slider3.png')),
                            )),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Center(child: Text('first image', style: TextStyle(color: Colors.blue.shade600))),
                            )
                          ],
                        )
                    ),
                  ),
                ),
              ],
            )
        )
    );
  }
}







// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import './slide.dart';
// import './slide_dots.dart';
// import './slideitem.dart';
//
// class SliderClass extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return new SliderClassState();
//   }
// }
//
// class SliderClassState extends State {
//   int _currentPage = 0;
//   @override
//   void initState() {
//     super.initState();
//     Timer.periodic(Duration(seconds: 4), (Timer timer) {
//       if (_currentPage < 2) {
//         _currentPage++;
//       } else {
//         _currentPage = 0;
//       }
//       _pageController.animateToPage(_currentPage,
//           duration: Duration(milliseconds: 500), curve: Curves.easeIn);
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _pageController.dispose();
//   }
//
//   _onPageChanged(int index) {
//     setState(() {
//       _currentPage = index;
//     });
//   }
//
//   final PageController _pageController = PageController(initialPage: 0);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       height: 300,
//       child: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//               scrollDirection: Axis.horizontal,
//               controller: _pageController,
//               onPageChanged: _onPageChanged,
//               itemCount: slideList.length,
//               itemBuilder: (ctx, i) => SlideItem(i),
//             ),
//           ),
//           new SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               for (int i = 0; i < slideList.length; i++)
//                 if (i == _currentPage) SlideDots(true) else SlideDots(false)
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
