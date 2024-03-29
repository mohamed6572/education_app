import 'package:education_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'note_Widget.dart';

class Note_Mony extends StatefulWidget {
  @override
  State<Note_Mony> createState() => _Note_MonyState();
}

class _Note_MonyState extends State<Note_Mony> {
  bool? _Check = false;
  bool? _Check1 = false;
  bool? _Check2 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'حجز المذكرات',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 25, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 70,
                        height: 40,
                        child: defultFormField(label: '', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('مجموعة الساعة',style: TextStyle(fontFamily: 'Cairo'),),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 70,
                        height: 40,
                        child: defultFormField(label: '', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('الصف  ',style: TextStyle(fontFamily: 'Cairo')),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 70,
                        height: 40,
                        child: defultFormField(label: '', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('المرحلة الدراسية ',style: TextStyle(fontFamily: 'Cairo')),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),


                ],
              ),

              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'تاريخ الحجز',
                      style: TextStyle(
                          fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 10,
                    ),
                  ),
                  Text(
                    'حالة الدفع',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                  ),
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
                      style: TextStyle(
                          fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                    ),
                  ),
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
                      'م',
                      style: TextStyle(
                          fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      '17/8/2020',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 10,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 10),
                      child: Checkbox(
                          value: _Check,
                          activeColor: Colors.green,
                          onChanged: (bool? value) {
                            setState(() {
                              _Check = value;
                            });
                          })),
                  SizedBox(
                    height: 150,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Text(
                      'محمد هشام',
                      style: TextStyle(
                          fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Text(
                      '-1',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
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
                    width: 20,
                  ),
                  Text(
                    'امتعنوا عن الحجز',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                  ),
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
                      style: TextStyle(
                          fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                    ),
                  ),
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
                      'م',
                      style: TextStyle(
                          fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(right: 8.0, left: 10),
                          child: Column(
                            children: [
                              Text(
                                'لا',
                                style: TextStyle(
                                    fontFamily: "Cairo",
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                              Checkbox(
                                  value: _Check1,
                                  activeColor: Colors.green,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _Check1 = value;
                                    });
                                  }),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(right: 8.0, left: 10),
                          child: Column(
                            children: [
                              Text(
                                'نعم',
                                style: TextStyle(
                                    fontFamily: "Cairo",
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                              Checkbox(
                                  value: _Check2,
                                  activeColor: Colors.green,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _Check2 = value;
                                    });
                                  }),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 150,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Text(
                      'احمد هشام',
                      style: TextStyle(
                          fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Text(
                      '-1',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ],
          ),
        ));
  }
}
