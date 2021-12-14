import 'package:education_app/Ui/SignUP%20&%20SignIn/Login/Login_Screan.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Register/Register_For_Student/studentWidget.dart';
import 'package:flutter/material.dart';

class Register_For_Secertary extends StatelessWidget {
  static const String routeName = 'Reg_For_Secertary';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.blue,
                    child: Icon(Icons.add),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                studentWidget('الاسم'),
                studentWidget('مشرف مجموعة \n الاستاذ'),
                studentWidget(' رقم \n الهاتف'),
                studentWidget(' رساله \n التأكيد'),
                studentWidget('الباسورد'),
                Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.25, top: 8),
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Login_Screan.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'ابدأ',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}