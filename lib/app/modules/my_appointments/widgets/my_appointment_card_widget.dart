import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentCard extends StatefulWidget {
  final String name;
  final String mode;
  final String status;
  final String time;
  final String image;
  final IconData icon1;
  final IconData icon2;
  const AppointmentCard(
      {super.key,
      required this.name,
      required this.mode,
      required this.status,
      required this.time,
      required this.image,
      required this.icon1,
      required this.icon2});

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColors.grey90,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            children: [
              Positioned(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  child: SizedBox(
                      height: 100,
                      width: 90,
                      child: Image.asset(
                        widget.image,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                      color: AppColors.primary,
                    ),
                    child: Center(
                      child: Icon(
                        widget.icon1,
                        color: Colors.white,
                      ),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            width: 13,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 10.sp,
              ),
              RichText(
                text: TextSpan(
                    text: widget.mode,
                    children: [
                      TextSpan(
                          text: widget.status,
                          style: GoogleFonts.roboto(
                              color: Colors.green, fontSize: 13.sp)),
                    ],
                    style: GoogleFonts.roboto(
                        color: Colors.black, fontSize: 13.sp)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.time,
                style: GoogleFonts.roboto(color: Colors.black),
              )
            ],
          ),
          const SizedBox(
            width: 18,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.primary100,
            ),
            child: Center(
              child: Icon(
                widget.icon2,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
