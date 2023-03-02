import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //List<String> itemlist=['gender','Male','Female'];
  // String? selecteditem='gender';
  var _currencies = [
    "male",
    "female",
    "prefere not to mention",
  ];
  var textStyle;
  var _currentSelectedValue;
  final _SignIn = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final fullnameController = TextEditingController();
  final adressController = TextEditingController();
  final dateController = TextEditingController();
  final genderController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              context.go('/Profile-Settings');
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary,
            )),
        title: Text(
          'Profile',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 26,
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(key: _SignIn, children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud_circle,
                      color: Color.fromARGB(255, 119, 166, 204),
                      size: 80,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Upload photo Profile',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                height: 136.0,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 20, left: 15, right: 15),
              child: SizedBox(
                height: 20,
                child: Divider(
                  color: Color.fromARGB(255, 230, 218, 218),
                ),
              ),
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
              height: 40,
              width: 340,
              child: TextField(
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
              padding: const EdgeInsets.only(left: 20),
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
              height: 40,
              width: 340,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
              height: 40,
              width: 340,
              child: FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(3),
                        labelStyle: textStyle,
                        errorStyle:
                            TextStyle(color: Colors.white, fontSize: 14.0),
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
                        focusColor: Color.fromARGB(255, 252, 246, 246),
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text('Date of birth'),
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
              height: 40,
              width: 340,
              child: TextField(
                keyboardType: TextInputType.datetime,
                controller: dateController,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Date of birth',
                  suffixIcon: Icon(Icons.calendar_month),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
              height: 40,
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
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Material(
                elevation: 5,
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(25),
                child: MaterialButton(
                  onPressed: () {
                    if (_SignIn.currentState!.validate()) {
                      print("sucess");
                      emailController.clear();
                      dateController.clear();
                      genderController.clear();
                      adressController.clear();
                      fullnameController.clear();
                    } else {
                      print('objects not filled');
                    }
                  },
                  minWidth: 320,
                  height: 42,
                  child: Text(
                    'Confrm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
