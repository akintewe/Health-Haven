import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppointment extends StatefulWidget {
  const MyAppointment({super.key});

  @override
  State<MyAppointment> createState() => _MyAppointmentState();
}

class _MyAppointmentState extends State<MyAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Image.asset('assets/images/app-logo.png'),
        title: Text(
          'My Appointments',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 23,
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.primary100,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_rounded,
                      color: AppColors.primary,
                    )),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
