import 'package:flutter/material.dart';

class teacher_Widget extends StatelessWidget {
  String text;
  Color color;

  teacher_Widget({this.text = '', this.color = Colors.tealAccent});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: EdgeInsets.all(9),
        child: Text(
          text,
          style:
              TextStyle(fontFamily: "Cairo", fontSize: 23, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
