import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientTitleWidget extends StatefulWidget {
  final String title;
  const PatientTitleWidget({super.key, required this.title});

  @override
  State<PatientTitleWidget> createState() => _PatientTitleWidgetState();
}

class _PatientTitleWidgetState extends State<PatientTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        RichText(
            text: TextSpan(
                text: widget.title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey30,
                  fontSize: 16,
                ),
                children: [
              TextSpan(
                text: '\*',
                style: GoogleFonts.roboto(color: Colors.red),
              )
            ]))
      ],
    );
  }
}
