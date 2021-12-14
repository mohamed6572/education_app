import 'package:country_code_picker/country_code_picker.dart';
import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Register/Chose_Register.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Register/Register_For_Father/Register_For_Father.dart';
import 'package:education_app/Ui/parent/parent.dart';
import 'package:flutter/material.dart';

class Login_Screan_for_parent extends StatefulWidget {
  static const String routeName = 'Loginforparent';

  @override
  State<Login_Screan_for_parent> createState() => _Login_Screan_parentState();
}

class _Login_Screan_parentState extends State<Login_Screan_for_parent> {
  bool isvisable = true;
  bool? _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    // height: 10,
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Image.asset(
                    'assets/images/loogo.png',
                    height: 250,
                    width: 200,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'قم بتسجيل الدخول ك ولي أمر الان',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 23),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: Row(children: [
                      Expanded(
                        flex: 1,
                        child: CountryCodePicker(
                          showFlagMain: false,
                          initialSelection: 'EG',
                          showCountryOnly: true,
                          alignLeft: true,
                          favorite: ['EG'],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: '0.000000',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              )),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: TextFormField(
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please Enter Password';
                        }
                        if (text.length < 6) {
                          return 'password should be at least 6 chars';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: ' Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: isvisable
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () =>
                              setState(() => isvisable = !isvisable),
                        ),
                      ),
                      obscureText: isvisable,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text('تذكرني لاحقا'),
                            Checkbox(
                                value: _checked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _checked = value;
                                  });
                                }),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'هل نسيت الرقم السري؟',
                              style: TextStyle(color: Colors.blue),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    // height: 10,
                    height: MediaQuery.of(context).size.height * 0.18,
                  ),
                  Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, parent.routeName);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('تسجيل الدخول'),
                        )),
                    width: 200,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Register_For_Father.routeName);
                      },
                      child: Text(
                        'تسجيل حساب جديد',
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}