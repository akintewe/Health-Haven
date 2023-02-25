import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagingPage extends StatefulWidget {
  const MessagingPage({super.key});

  @override
  State<MessagingPage> createState() => _MessagingPageState();
}

class _MessagingPageState extends State<MessagingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: IconButton(
            iconSize: 26,
            onPressed: () {
              context.go('/myAppointmentPage');
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary,
            )),
        title: Text(
          'Messaging',
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primary100),
                child: Icon(
                  Icons.more_vert_rounded,
                  color: AppColors.primary,
                  size: 26,
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
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
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          child: SizedBox(
                              height: 100,
                              width: 90,
                              child: Image.asset(
                                'assets/images/doctor3.jpg',
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
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
                        'Dr. Mary Steward',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '10:00 - 10:30AM',
                        style: GoogleFonts.roboto(color: Colors.black),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(),
            ],
          ),
        ],
      ),
    );
  }
}
