import 'dart:io';

import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:remixicon/remixicon.dart';

class SpecialistSignIN extends StatefulWidget {
  const SpecialistSignIN({super.key});

  @override
  State<SpecialistSignIN> createState() => _SpecialistSignINState();
}

class _SpecialistSignINState extends State<SpecialistSignIN> {
  File? image;
  final imagepicker = ImagePicker();
  uploadImage() async {
    var pickedImage = await imagepicker.getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    } else {}
  }

  var _currencies = [
    "male",
    "female",
    "prefere not to mention",
  ];
  var textStyle;
  var _currentSelectedValue;
  late String _email;
  final _SignIn = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final fullnameController = TextEditingController();
  final phoneController = TextEditingController();
  final adressController = TextEditingController();
  final dateController = TextEditingController();
  final genderController = TextEditingController();
  final passController = TextEditingController();
  final hospitalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Form(
                  key: _SignIn,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Remix.shield_cross_fill,
                          size: 100,
                          color: AppColors.primary,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Sign in  Specialist',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 34,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text('FullName'),
                              Text(
                                '*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: 340,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            controller: fullnameController,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Full name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Row(
                            children: [
                              Text('Email'),
                              Text(
                                '*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 70,
                          width: 340,
                          child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(60),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "invalid email";
                                }
                                validator:
                                (String value) {
                                  if (value.isEmpty) {
                                    return "invalid email";
                                  }
                                  if (!RegExp(
                                          "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                      .hasMatch(value)) {
                                    return 'invalid email';
                                  }
                                  return null;
                                };
                                OnSaved:
                                (String email) {
                                  _email = email;
                                };
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text('Gender'),
                              Text(
                                '*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 340,
                          child: FormField<String>(
                            builder: (FormFieldState<String> state) {
                              return InputDecorator(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(3),
                                    labelStyle: textStyle,
                                    errorStyle: TextStyle(
                                        color: Colors.white, fontSize: 14.0),
                                    hintText: 'gender',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(90),
                                      borderSide: BorderSide(
                                        width: 50,
                                      ),
                                    )),
                                isEmpty: _currentSelectedValue == '',
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    focusColor: Colors.grey[300],
                                    value: _currentSelectedValue,
                                    isDense: true,
                                    onChanged: (newValue) {
                                      setState(() {
                                        _currentSelectedValue = newValue;
                                        state.didChange(newValue);
                                      });
                                    },
                                    items: _currencies.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: 340,
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            controller: phoneController,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Phone number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text('Adress'),
                              Text(
                                '*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: 340,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            controller: adressController,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Adress',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text('Hospital Name'),
                              Text(
                                '*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: 340,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            controller: hospitalController,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Hospital Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 400,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[100],
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    uploadImage();
                                  },
                                  child: Text(
                                    'UPload Medical School certification',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                image == null
                                    ? Text('no picture')
                                    : Image.file(image!),
                              ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Material(
                          elevation: 5,
                          color: Colors.blue[700],
                          borderRadius: BorderRadius.circular(25),
                          child: MaterialButton(
                            onPressed: () {
                              if (_SignIn.currentState!.validate()) {
                                print("sucess");
                                emailController.clear();
                                passController.clear();
                                context.go('/sign-in');
                              }
                            },
                            minWidth: 320,
                            height: 42,
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ]))),
        ));
  }
}
