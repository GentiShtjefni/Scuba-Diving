import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ResetPassword extends StatefulWidget {
  ResetPassword({Key key, this.message}) : super(key: key);
  final String message;

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xff94e9ff),
                    Color(0xff4da9ef),
                  ])),
        ),
        title: new Image.asset(
          'images/logo.png',
          width: 50.0,
          height: 50.0,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('images/bg1.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              widget.message,
              style: TextStyle(
                color: Colors.blue.shade700,
                fontWeight: FontWeight.bold,
                fontSize:21,
              )
            ),
          )
        ),

      ),    );
  }
}
