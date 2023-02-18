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
        Text(
          widget.title,
          style: GoogleFonts.roboto(
              color: AppColors.grey30, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
