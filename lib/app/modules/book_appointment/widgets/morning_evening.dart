import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MorningEvening extends StatefulWidget {
  final String time;
  final IconData timeIcon;
  const MorningEvening({super.key, required this.time, required this.timeIcon});

  @override
  State<MorningEvening> createState() => _MorningEveningState();
}

class _MorningEveningState extends State<MorningEvening> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          border: Border.all(color: AppColors.primary, width: 3)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              widget.timeIcon,
              color: AppColors.primary,
            ),
            Text(
              widget.time,
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                  fontSize: 19),
            )
          ],
        ),
      ),
    );
  }
}
