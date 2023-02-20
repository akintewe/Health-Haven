import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
        children: [
          Stack(
            children: [
              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
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
                    decoration: BoxDecoration(
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
          SizedBox(
            width: 13,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.name,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    text: widget.mode,
                    children: [
                      TextSpan(
                          text: widget.status,
                          style: GoogleFonts.roboto(
                              color: Colors.green, fontSize: 14)),
                    ],
                    style:
                        GoogleFonts.roboto(color: Colors.black, fontSize: 14)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.time,
                style: GoogleFonts.roboto(color: Colors.black),
              )
            ],
          ),
          SizedBox(
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
