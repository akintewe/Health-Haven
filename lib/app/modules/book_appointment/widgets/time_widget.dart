import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/colors.dart';

class TimeWidget extends StatefulWidget {
  final String time;
  const TimeWidget({super.key, required this.time});

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSelected = !isSelected;
        setState(() {});
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
            color: isSelected ? AppColors.primary : AppColors.white,
            borderRadius: BorderRadius.circular(80),
            border: Border.all(color: AppColors.primary, width: 3)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.time,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: isSelected ? AppColors.white : AppColors.primary,
                    fontSize: 19),
              )
            ],
          ),
        ),
      ),
    );
  }
}
