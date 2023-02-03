import 'package:cancer_chat/core/theme/colors.dart';
import 'package:cancer_chat/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
            onPressed: () {},
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
      body: Column(
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
          GestureDetector(
            onTap: () {
              isSelected = !isSelected;
              isSelected2 = false;
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
                  border: isSelected
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
                        'assets/icons/chat (1).png',
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
                          'via SMS:',
                          style: GoogleFonts.b612(
                              color: AppColors.grey50,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '+2349*********76',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
                          'jo*********@gmail.com',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
