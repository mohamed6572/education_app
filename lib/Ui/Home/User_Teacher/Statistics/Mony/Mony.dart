import 'package:education_app/Ui/Home/User_Teacher/Statistics/Mony/Month.dart';
import 'package:education_app/Ui/Home/User_Teacher/Statistics/Mony/Note_Mony.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class Mony extends StatefulWidget {
  @override
  State<Mony> createState() => _MonyState();
}

class _MonyState extends State<Mony> {
  int Index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: defultColor,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Index = 1;
                      setState(() {});
                    },
                    child: Text(
                      'الشهر',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.white),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Index = 0;
                      setState(() {});
                    },
                    child: Text(
                      'حجز مذكرات',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.white),
                    )),
              ],
            ),
            ViewsIndex(Index),
          ],
        ),
      ),
    );
  }

  Widget ViewsIndex(int index) {
    if (index == 0) {
      return Note_Mony();
    } else if (index == 1) {
      return Month();
    }
    return Container();
  }
}
