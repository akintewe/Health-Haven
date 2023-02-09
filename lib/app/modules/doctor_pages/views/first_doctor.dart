import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Doctor1 extends StatefulWidget {
  const Doctor1({super.key});

  @override
  State<Doctor1> createState() => _Doctor1State();
}

class _Doctor1State extends State<Doctor1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary,
              size: 27,
            )),
            title: Text('Dr. Jenny Wilson', style: GoogleFonts.actor(
              color: Colors.black,
            ),),
      ),
    );
  }
}
