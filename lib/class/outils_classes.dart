import 'package:flutter/material.dart';
import 'package:motivation/class/class.dart';
import 'package:motivation/main.dart';

//mape çevirip yükseliş alçalış ona göre icon

class VerticalItemClasses extends StatefulWidget {
  const VerticalItemClasses({
    @required this.title,
    Key key,
  }) : super(key: key);

  final String title;

  @override
  _VerticalItemState createState() => _VerticalItemState();
}

class _VerticalItemState extends State<VerticalItemClasses> {
  final cardHeight = 300.0;

  final List<Class> names = [
    new Class('Calculus', 'assets/calculus.png'),
    new Class('physics', 'assets/fizik.png'),
    new Class("Ancient Philosophy", 'assets/felsefe.png'),
    new Class("Bau Engineering", 'assets/bau.png'),
    new Class("AutoCad", 'assets/autocad.png'),
  ];

  @override
  Widget build(BuildContext context) => Container(
        child: Card(
          elevation: 4,
          child: Column(children: [
            Container(
              color: HexColor('#c1c4e5'),
              child: Center(
                child: Text(
                  names[int.parse(widget.title)].name,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              //child: Image(
              // image: AssetImage(names[int.parse(widget.title)].picture)),
              //child: Image.asset('arrow1.png'),
              child: Image(
                image: AssetImage('assets/arrow3.png'),
              ),
            ),
          ]),
        ),
      );
}

/// Wrap Ui item with animation & padding
Widget Function(
  BuildContext context,
  int index,
  Animation<double> animation,
) animationItemBuilder(
  Widget Function(int index) child, {
  EdgeInsets padding = EdgeInsets.zero,
}) =>
    (
      BuildContext context,
      int index,
      Animation<double> animation,
    ) =>
        FadeTransition(
          opacity: Tween<double>(
            begin: 0,
            end: 1,
          ).animate(animation),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0, -0.1),
              end: Offset.zero,
            ).animate(animation),
            child: Padding(
              padding: padding,
              child: child(index),
            ),
          ),
        );

Widget Function(
  BuildContext context,
  Animation<double> animation,
) animationBuilder(
  Widget child, {
  double xOffset = 0,
  EdgeInsets padding = EdgeInsets.zero,
}) =>
    (
      BuildContext context,
      Animation<double> animation,
    ) =>
        FadeTransition(
          opacity: Tween<double>(
            begin: 0,
            end: 1,
          ).animate(animation),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(xOffset, 0.1),
              end: Offset.zero,
            ).animate(animation),
            child: Padding(
              padding: padding,
              child: child,
            ),
          ),
        );
