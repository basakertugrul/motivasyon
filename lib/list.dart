import 'package:flutter/material.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:motivation/main.dart';
import 'package:motivation/outils.dart';

class LiveListExample extends StatelessWidget {
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
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 100,
                  child: Card(
                    color: Colors.grey[350],
                    child: Center(
                      child: Text(
                        "Gümüş Lig",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    elevation: 10,
                  ),
                ),
                Expanded(
                  child: VerticalExample(),
                ),
              ],
            ),
          ),
        ),
      );
}

//item count list.length olcak
class VerticalExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LiveList(
        showItemInterval: Duration(milliseconds: 80),
        showItemDuration: Duration(milliseconds: 150),
        padding: EdgeInsets.all(16),
        reAnimateOnVisibility: true,
        scrollDirection: Axis.vertical,
        itemCount: 40,
        itemBuilder: animationItemBuilder(
          (index) => VerticalItem(
            title: index.toString(),
          ),
          padding: EdgeInsets.symmetric(vertical: 2),
        ),
      );
}
