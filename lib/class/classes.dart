import 'package:flutter/material.dart';
import 'package:motivation/class/class.dart';
import 'package:motivation/main.dart';
import 'package:flip_card/flip_card.dart';

class Classes extends StatelessWidget {
  final List<Class> names = [
    Class('BAU Engineering', 'assets/bau.png',
        "Study Group is a global leader in preparing students for international academic success and rewarding careers through life-changing learning. We provide education through International Study Centres (ISCs) in collaboration with leading universities. Our pathway programmes provide the language, academic and social skills that students need for university progression and continued success in a global society. Study Group creates new opportunities for students to fulfil their academic or professional goals."),
    Class('Physics', 'assets/fizik.png',
        "Study Group is a global leader in preparing students for international academic success and rewarding careers through life-changing learning. We provide education through International Study Centres (ISCs) in collaboration with leading universities. Our pathway programmes provide the language, academic and social skills that students need for university progression and continued success in a global society. Study Group creates new opportunities for students to fulfil their academic or professional goals. Study Group is a global leader in preparing students for international academic success and rewarding careers through life-changing learning. We provide education through International Study Centres (ISCs) in collaboration with leading universities. Our pathway programmes provide the language, academic and social skills that students need for university progression and continued success in a global society. Study Group creates new opportunities for students to fulfil their academic or professional goals."),
    Class('Philosophy', 'assets/felsefe.png',
        "Study Group is a global leader in preparing students for international academic success and rewarding careers through life-changing learning. We provide education through International Study Centres (ISCs) in collaboration with leading universities. Our pathway programmes provide the language, academic and social skills that students need for university progression and continued success in a global society. Study Group creates new opportunities for students to fulfil their academic or professional goals."),
    Class('AutoCad', 'assets/autocad.png',
        "Study Group is a global leader in preparing students for international academic success and rewarding careers through life-changing learning. We provide education through International Study Centres (ISCs) in collaboration with leading universities. Our pathway programmes provide the language, academic and social skills that students need for university progression and continued success in a global society. Study Group creates new opportunities for students to fulfil their academic or professional goals."),
    Class('Calculus', 'assets/calculus.png',
        "Study Group is a global leader in preparing students for international academic success and rewarding careers through life-changing learning. We provide education through International Study Centres (ISCs) in collaboration with leading universities. Our pathway programmes provide the language, academic and social skills that students need for university progression and continued success in a global society. Study Group creates new opportunities for students to fulfil their academic or professional goals."),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: names.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: FlipCard(
            front: Container(
              child: Center(
                  child: Column(
                children: [
                  Card(
                    elevation: 5,
                    color: HexColor('#BCC9C7'),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        names[index].name,
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        image: AssetImage(names[index].picture),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              )),
            ),
            back: Card(
              elevation: 5,
              color: HexColor('#BCC9C7'),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      "INFO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      names[index].info,
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
