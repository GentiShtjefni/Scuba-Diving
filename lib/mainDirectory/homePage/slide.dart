import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;

  Slide({
    @required this.imageUrl,
    @required this.title,
  });
}

final slideList = [
  Slide(
    imageUrl: 'images/slider1.png',
    title: 'first image',
  ),
  Slide(
    imageUrl: 'images/slider2.png',
    title: 'second image',
  ),
  Slide(
    imageUrl: 'images/slider3.png',
    title: 'third image',
  ),
];
