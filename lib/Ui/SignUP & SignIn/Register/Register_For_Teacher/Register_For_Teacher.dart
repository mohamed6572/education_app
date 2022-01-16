import 'dart:io';


import 'package:education_app/Ui/SignUP%20&%20SignIn/Login/Login_Screan_for_teacher.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class Register_For_Teacher extends StatefulWidget {
  static const String routeName = 'Reg_For_Teacher';

  // ImageSource? _source;
  // static String? image ;
  @override
  State<Register_For_Teacher> createState() => _Register_For_TeacherState();
}

class _Register_For_TeacherState extends State<Register_For_Teacher> {
  // XFile? _imageFile;

  File? image;
  // final ImagePicker _picker = ImagePicker();

  Future pichkImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = await saveImagePermanently(image.path);
    setState(() => this.image = imageTemporary);
  }

  Future<File> saveImagePermanently(String imagepath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagepath);
    final image = File('${directory.path}/$name');
    return File(imagepath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Stack(
                  children: [
                    ClipOval(
                      child: image != null
                          ? Image.file(
                              image!,
                              width: 150,
                              height: 140,
                              fit: BoxFit.cover,
                            )
                          : FlutterLogo(
                              size: 150,
                            ),
                    ),
                    Positioned(
                        bottom: 20,
                        right: 20,
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (buildContext) => bottomSheet());
                          },
                          child: Icon(
                            Icons.camera_alt,
                            size: 28,
                            color: Colors.teal,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "الاسم",
                      hintStyle: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Colors.blue))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "اسم المادة",
                      hintStyle: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Colors.blue))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "نبذة مختصرة",
                      hintStyle: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Colors.blue))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "رقم الهاتف",
                      hintStyle: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Colors.blue))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "رسالة التأكيد",
                      hintStyle: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Colors.blue))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'الباسورد',
                      hintStyle: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Colors.blue))),
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, Login_Screan_for_teacher.routeName);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'إنشاء حساب',
                              style: TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }

//   Future takePhoto(ImageSource source)async{
//     final PickedFile =await _picker.pickImage(
//         source: source);
//
//     setState(() {
// Register_For_Teacher.image=source.toString();
//       _imageFile = PickedFile! ;
//     });
//   }
  Widget bottomSheet() {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Text('اختر صورة ملفك الشخصي',
              style: TextStyle(
                  fontFamily: "Cairo", fontSize: 20, color: Colors.black)),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                icon: Icon(Icons.camera),
                label: Text("كاميرا"),
                onPressed: () {
                  pichkImage(ImageSource.camera);
                },
              ),
              SizedBox(
                width: 10,
              ),
              TextButton.icon(
                icon: Icon(Icons.image),
                label: Text("المعرض"),
                onPressed: () {
                  pichkImage(ImageSource.gallery);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
