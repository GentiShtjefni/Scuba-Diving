import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './slide.dart';
import './slideitem.dart';

class SliderClassListingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SliderClassListingPageState();
  }
}

class SliderClassListingPageState extends State {
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 230,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: slideList.length,
              itemBuilder: (ctx, i) => SlideItem(i),
            ),
          ),

          // Expanded(
          //     child: Stack(
          //       alignment: AlignmentDirectional.bottomCenter,
          //       children: [
          //         PageView.builder(
          //           scrollDirection: Axis.horizontal,
          //           onPageChanged: _onPageChanged,
          //           controller: _pageController,
          //           itemCount: slideList.length,
          //           itemBuilder: (ctx, i) => SlideItem(i),
          //         ),
          //         Stack(
          //           alignment: AlignmentDirectional.topStart,
          //           children: [
          //             // new Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
          //             Container(
          //               margin: const EdgeInsets.only(bottom: 35),
          //               child: Row(
          //                 mainAxisSize: MainAxisSize.max,
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   SizedBox(
          //                     height: 10,
          //                   ),
          //                   for(int i = 0; i<slideList.length; i++)
          //                     if( i == _currentPage )
          //                       SlideDots(true)
          //                     else
          //                       SlideDots(false)
          //                 ],
          //               )
          //             )
          //           ],
          //         )
          //       ],
          //     ),
          // ),
        ],
      ),
    );
  }
}
