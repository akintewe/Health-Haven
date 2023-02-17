import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BookAppointment1 extends StatefulWidget {
  const BookAppointment1({super.key});

  @override
  State<BookAppointment1> createState() => _BookAppointment1State();
}

class _BookAppointment1State extends State<BookAppointment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary,
              size: 29,
            )),
        title: Text(
          'Book Appointment',
          style: GoogleFonts.roboto(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: ,
    );
  }
}
