import 'package:flutter/material.dart';
import 'package:project/NavBar/Recherche.dart';
import 'package:project/mainDirectory/fourthTab/fourthTab.dart';
import 'package:project/mainDirectory/secondTab/secondPage.dart';
import 'package:project/mainDirectory/thirdTab/thirdTab.dart';
import 'NavBar/Aide.dart';
import 'NavBar/Enregister.dart';
import 'NavBar/Meteo.dart';
import 'NavBar/WishList.dart';
import 'NavBar/settings.dart';
import 'mainDirectory/fourthTab/ProfilePro.dart';
import 'mainDirectory/fourthTab/infos.dart';
import 'mainDirectory/fourthTab/monCentre.dart';
import 'mainDirectory/fourthTab/profileclient.dart';
import 'mainDirectory/fourthTab/voyages.dart';
import 'mainDirectory/homePage/homePage.dart';
void main()   {
  runApp(new MaterialApp(
    title: 'Project',
    debugShowCheckedModeBanner: false,
    // home: new Homepage(),
    initialRoute: '/',
    routes: {
      '/' : (context) => MyHomePage(),
      '/plonger' : (context) => SecondTab(),
      '/snorkeling' : (context) => ThirdTab(),
      '/login' : (context) => FourthTab(),
      '/recherche' : (context) => Recherche(),
      '/wishlist' : (context) => WishList(),
      '/enregister' : (context) => Enregister(),
      '/meteo' : (context) => Meteo(),
      '/settings' : (context) => Settings(),
      '/aide' : (context) => Aide(),
      '/profilepro' : (context) => ProfilePro(),
      '/profileclient': (context) => ProfileClient(),
      '/centre': (context) => Centre(),
      '/infos': (context) => Infos(),
      '/voyages': (context) => Voyages(),
    },
  ));
}

