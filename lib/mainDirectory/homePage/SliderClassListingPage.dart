import 'package:flutter/material.dart';


class SliderClassListingPage extends StatelessWidget {
  const SliderClassListingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: double.infinity,
      child: SingleChildScrollView(
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
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import './slide.dart';
// import './slideitem.dart';
//
// class SliderClassListingPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return new SliderClassListingPageState();
//   }
// }
//
// class SliderClassListingPageState extends State {
//   int _currentPageResult = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     Timer.periodic(Duration(seconds: 4), (Timer timer) {
//       if (_currentPageResult < 2) {
//         _currentPageResult++;
//       } else {
//         _currentPageResult = 0;
//       }
//       _pageControllerResult.animateToPage(_currentPageResult,
//           duration: Duration(milliseconds: 500), curve: Curves.easeIn);
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _pageControllerResult.dispose();
//   }
//
//   _onPageChanged(int index) {
//     setState(() {
//       _currentPageResult = index;
//     });
//   }
//
//   final PageController _pageControllerResult = PageController(initialPage: 0);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       height: 230,
//       child: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//               scrollDirection: Axis.horizontal,
//               controller: _pageControllerResult,
//               onPageChanged: _onPageChanged,
//               itemCount: slideList.length,
//               itemBuilder: (ctx, i) => SlideItem(i),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
