import 'package:flutter/material.dart';
import 'package:motivation/person.dart';

//mape çevirip yükseliş alçalış ona göre icon

class VerticalItem extends StatefulWidget {
  const VerticalItem({
    @required this.title,
    Key key,
  }) : super(key: key);

  final String title;

  @override
  _VerticalItemState createState() => _VerticalItemState();
}

class _VerticalItemState extends State<VerticalItem> {
  final cardHeight = 60.0;

  final List<Person> peuple = [
    new Person("Başak Ertuğrul", 3),
    new Person("Kıvanç Uzer", 4),
    new Person("Ömer Can Sucu", 2),
    new Person("Nasira Cansev", 5),
    new Person("Ege Tel", 2),
    new Person("Ata Tel", 3),
    new Person("Banu Karadaş", 1),
    new Person("Hidayet Sucu", 5),
    new Person("Başak Ertuğrul", 3),
    new Person("Kıvanç Uzer", 1),
    new Person("Ömer Can Sucu", 2),
    new Person("Nasira Cansev", 3),
    new Person("Ege Tel", 2),
    new Person("Ata Tel", 4),
    new Person("Banu Karadaş", 4),
    new Person("Hidayet Sucu", 5),
    new Person("Başak Ertuğrul", 3),
    new Person("Kıvanç Uzer", 4),
    new Person("Ömer Can Sucu", 2),
    new Person("Nasira Cansev", 5),
    new Person("Ege Tel", 2),
    new Person("Ata Tel", 3),
    new Person("Banu Karadaş", 1),
    new Person("Hidayet Sucu", 5),
    new Person("Başak Ertuğrul", 3),
    new Person("Kıvanç Uzer", 4),
    new Person("Ömer Can Sucu", 2),
    new Person("Nasira Cansev", 5),
    new Person("Ege Tel", 2),
    new Person("Ata Tel", 3),
    new Person("Banu Karadaş", 1),
    new Person("Hidayet Sucu", 5),
    new Person("Başak Ertuğrul", 3),
    new Person("Kıvanç Uzer", 4),
    new Person("Ömer Can Sucu", 2),
    new Person("Nasira Cansev", 5),
    new Person("Ege Tel", 2),
    new Person("Ata Tel", 3),
    new Person("Banu Karadaş", 1),
    new Person("Hidayet Sucu", 5)
  ];

  final List<Widget> arrow = [
    Image(
      image: AssetImage('assets/arrow1.png'),
    ),
    Image(
      image: AssetImage('assets/arrow2.png'),
    ),
    Image(
      image: AssetImage('assets/arrow3.png'),
    ),
    Image(
      image: AssetImage('assets/arrow4.png'),
    ),
    Image(
      image: AssetImage('assets/arrow5.png'),
    ),
  ];

  @override
  Widget build(BuildContext context) => Container(
        height: cardHeight,
        child: Card(
          elevation: 4,
          child: Row(
            children: [
              Container(
                width: cardHeight,
                height: cardHeight,
                child: Card(
                  color: Colors.blue[50],
                  child: Text(
                    '${widget.title}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    peuple[int.parse(widget.title)].name,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: arrow[peuple[int.parse(widget.title)].rising - 1],
              ),
            ],
          ),
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
