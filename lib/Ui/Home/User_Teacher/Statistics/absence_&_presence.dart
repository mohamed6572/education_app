import 'package:education_app/Ui/Home/User_Teacher/Statistics/Mony/absence_widget.dart';
import 'package:education_app/Ui/Home/User_Teacher/Statistics/stat_widget.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class absence_presence extends StatefulWidget {
  @override
  State<absence_presence> createState() => _absence_presenceState();
}

class _absence_presenceState extends State<absence_presence> {
  bool? _Check = false;

  bool? _Check1 = false;

  bool? _Check2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: defultColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 70,
                            height: 40,
                            child: defultFormField(label: '', border: OutlineInputBorder()),
                          ),
                          Text(' الصف',  style: TextStyle(fontFamily: 'Cairo'),),
                          Spacer(),
                          Container(
                            width: 70,
                            height: 40,
                            child: defultFormField(label: '', border: OutlineInputBorder()),
                          ),
                          Text('مجموعة الساعة ',  style: TextStyle(fontFamily: 'Cairo'),),


                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 70,
                            height: 40,
                            child: defultFormField(label: '', border: OutlineInputBorder()),
                          ),
                          Text(' المرحلة الدراسية',  style: TextStyle(fontFamily: 'Cairo'),),
                          Spacer(),
                          Container(
                            width: 70,
                            height: 40,
                            child: defultFormField(label: '', border: OutlineInputBorder()),
                          ),
                          Text('الشهر ',  style: TextStyle(fontFamily: 'Cairo'),),

                        ],
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      Text('الحصه',  style: TextStyle(fontFamily: 'Cairo'),),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                          width: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          'الاسم',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        absence_widget('30'),
                        absence_widget('29'),
                        absence_widget('28'),
                        absence_widget('27'),
                        absence_widget('26'),
                        absence_widget('25'),
                        absence_widget('24'),
                        absence_widget('23'),
                        absence_widget('22'),
                        absence_widget('21'),
                        absence_widget('20'),
                        absence_widget('19'),
                        absence_widget('18'),
                        absence_widget('17'),
                        absence_widget('16'),
                        absence_widget('15'),
                        absence_widget('14'),
                        absence_widget('13'),
                        absence_widget('12'),
                        absence_widget('11'),
                        absence_widget('10'),
                        absence_widget('9'),
                        absence_widget('8'),
                        absence_widget('7'),
                        absence_widget('6'),
                        absence_widget('5'),
                        absence_widget('4'),
                        absence_widget('3'),
                        absence_widget('2'),
                        absence_widget('1'),
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Text(
                            'محمد هشام',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'حفظ ',
                    style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                ),
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'طباعة',
                    style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(defultColor)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
