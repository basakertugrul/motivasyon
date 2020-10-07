import 'package:flutter/material.dart';
import 'package:motivation/main.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                  0.3,
                  1.0
                ],
                    colors: [
                  HexColor('#B4C3CC'),
                  HexColor('#ffffff'),
                ])),
            child: Column(
              children: <Widget>[Text("hi")],
            ),
          ),
        ),
      );
}
