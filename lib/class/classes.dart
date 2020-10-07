import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:motivation/main.dart';
import 'package:motivation/class/outils_classes.dart';

class Classes extends StatelessWidget {
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
                  margin: EdgeInsets.only(
                      left: 3.0, right: 3.0, top: 8.0, bottom: 4.0),
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Card(
                      color: HexColor('#AFD5C1'),
                      child: Text(
                        "CLASSES YOU CAN JOIN!",
                        style: TextStyle(
                          fontSize: 29,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      elevation: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: VerticalExampleClass(),
                ),
              ],
            ),
          ),
        ),
      );
}

//item count list.length olcak
class VerticalExampleClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LiveList(
        showItemInterval: Duration(milliseconds: 80),
        showItemDuration: Duration(milliseconds: 150),
        padding: EdgeInsets.all(16),
        reAnimateOnVisibility: true,
        scrollDirection: Axis.vertical,
        itemCount: 40,
        itemBuilder: animationItemBuilder(
          (index) => VerticalItemClasses(
            title: index.toString(),
          ),
          padding: EdgeInsets.symmetric(vertical: 2),
        ),
      );
}
