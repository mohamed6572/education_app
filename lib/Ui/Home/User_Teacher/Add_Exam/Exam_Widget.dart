import 'package:flutter/material.dart';

class Exam_Widget extends StatefulWidget {
  String text = '';

  Exam_Widget(this.text);

  @override
  State<Exam_Widget> createState() => _Exam_Widget();
}

class _Exam_Widget extends State<Exam_Widget> {
  bool? _Check = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Text(
            widget.text,
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 15, color: Colors.black),
          ),
          Checkbox(
              value: _Check,
              activeColor: Colors.green,
              onChanged: (bool? value) {
                setState(() {
                  value = _Check;
                });
              })
        ],
      ),
    );
  }
}
