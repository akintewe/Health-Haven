import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return GestureDetector(
      onTap: () {
        isSelected = !isSelected;
        setState(() {});
      },
      child: Container(
        height: 40.h,
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
            color: isSelected ? AppColors.primary : AppColors.white,
            borderRadius: BorderRadius.circular(80),
            border: Border.all(color: AppColors.primary, width: 2.5.sp)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                widget.timeIcon,
                color: isSelected ? AppColors.white : AppColors.primary,
              ),
              Text(
                widget.time,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    color: isSelected ? AppColors.white : AppColors.primary,
                    fontSize: 18.sp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
