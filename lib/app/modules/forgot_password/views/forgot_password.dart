import 'package:cancer_chat/core/theme/colors.dart';
import 'package:cancer_chat/core/theme/text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  bool isSelected = false;
  bool isSelected2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              context.go('/sign-in');
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary400,
              size: 25,
            )),
        title: Text(
          'Forgot Password',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 23),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Select which contact details we should use to reset your\npassword',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                isSelected2 = !isSelected2;
                isSelected = false;
                setState(() {});
              },
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.primary100,
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(1.0, 2.0))
                    ],
                    border: isSelected2
                        ? Border.all(
                            color: AppColors.primary,
                            width: 3,
                          )
                        : null),
                child: Card(
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: Image.asset(
                          'assets/icons/email.png',
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'via Email:',
                            style: GoogleFonts.b612(
                                color: AppColors.grey50,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '***********@gmail.com',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Input your email address below',
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, right: 8),
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
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'invalid email';
                      }
                      return null;
                    };
                  }),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            SizedBox(
              height: 60,
              width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: ((context) => Center(
                              child: Container(
                                height: 70,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            )));

                    FirebaseAuth.instance
                        .sendPasswordResetEmail(email: emailController.text)
                        .then((value) {});
                  },
                  child: Center(
                    child: Text(
                      'Reset Password',
                      style: GoogleFonts.roboto(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
