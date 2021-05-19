import 'package:flutter/material.dart';
import './mainDirectory/homepage1.dart';
// import 'package:firebase_core/firebase_core.dart';
void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(new MaterialApp(
    title: 'Project',
    debugShowCheckedModeBanner: false,
    home: new Homepage(),
  ));
}