import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:flutter/material.dart';

class communication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Course_Wiget('المرحلة الدراسية'),
            Course_Wiget('         اسم الصف  '),
            Course_Wiget(' مجموعة الساعة'),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.blue,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                    blurRadius: 8),
              ], borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: Text(
                '..........نص الرسالة',
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'إرسال',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}