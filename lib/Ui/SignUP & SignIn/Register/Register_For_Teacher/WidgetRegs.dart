import 'package:flutter/material.dart';

class WidgetRegs extends StatelessWidget {
  String text;

  WidgetRegs(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 2, color: Colors.blue))),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '-:',
            style: Theme.of(context).textTheme.headline1,
          ),
          Expanded(
              flex: 1,
              child: Text(
                text,
                style: Theme.of(context).textTheme.headline1,
              )),
        ],
      ),
    );
  }
}