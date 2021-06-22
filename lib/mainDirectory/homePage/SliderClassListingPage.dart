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
  int _currentPageResult = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (_currentPageResult < 2) {
        _currentPageResult++;
      } else {
        _currentPageResult = 0;
      }
      _pageControllerResult.animateToPage(_currentPageResult,
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageControllerResult.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPageResult = index;
    });
  }

  final PageController _pageControllerResult = PageController(initialPage: 0);

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
              controller: _pageControllerResult,
              onPageChanged: _onPageChanged,
              itemCount: slideList.length,
              itemBuilder: (ctx, i) => SlideItem(i),
            ),
          ),
        ],
      ),
    );
  }
}
