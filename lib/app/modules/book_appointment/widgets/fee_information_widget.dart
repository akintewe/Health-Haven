import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FeeInfoWidget extends StatefulWidget {
  final String header;
  final String comment;
  final IconData icon;
  final String price;
  const FeeInfoWidget(
      {super.key,
      required this.header,
      required this.comment,
      required this.icon,
      required this.price});

  @override
  State<FeeInfoWidget> createState() => _FeeInfoWidgetState();
}

class _FeeInfoWidgetState extends State<FeeInfoWidget> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isPressed = !isPressed;
        setState(() {});
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 90.h,
          width: MediaQuery.of(context).size.width * 0.9.sp,
          decoration: BoxDecoration(
              color: isPressed ? AppColors.primary : Colors.white,
              border: Border.all(
                color: AppColors.grey80,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor:
                    isPressed ? Colors.white : AppColors.primary100,
                radius: 30,
                child: Icon(
                  widget.icon,
                  size: 25.sp,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.header,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: isPressed ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.comment,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      color: isPressed ? Colors.white : AppColors.grey50,
                    ),
                  )
                ],
              ),
              Text(
                widget.price,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: isPressed ? Colors.white : AppColors.primary,
                  fontSize: 20.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
