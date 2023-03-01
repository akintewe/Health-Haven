import 'package:cancer_chat/app/modules/doctor_pages/widgets/date_scroll_widget.dart';
import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Doctor1 extends StatefulWidget {
  const Doctor1({super.key});

  @override
  State<Doctor1> createState() => _Doctor1State();
}

class _Doctor1State extends State<Doctor1> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.h,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              context.go('/home-page');
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary,
              size: 27.sp,
            )),
        title: Text(
          'Dr. Jenny Wilson',
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColors.primary90,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Image.asset(
                  'assets/icons/love.png',
                  //width: 30,
                  height: 20.h,
                )),
              ),
              SizedBox(
                width: 10.w,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      context: context,
                      builder: (context) => SizedBox(
                            height: 280,
                            width: 100,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: AppColors.grey100,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Share',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/icons/whatsapp.png',
                                      width: 60,
                                    ),
                                    Image.asset(
                                      'assets/icons/twitter.png',
                                      width: 60,
                                    ),
                                    Image.asset(
                                      'assets/icons/facebook.png',
                                      width: 60,
                                    ),
                                    Image.asset(
                                      'assets/icons/instagram.png',
                                      width: 60,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Whatsapp',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'Twitter',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'Facebook',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'Instagram',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/icons/gmail.png',
                                      width: 60,
                                    ),
                                    Image.asset(
                                      'assets/icons/tiktok.png',
                                      width: 60,
                                    ),
                                    Image.asset(
                                      'assets/icons/messages.png',
                                      width: 60,
                                    ),
                                    Image.asset(
                                      'assets/icons/linkedin.png',
                                      width: 60,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Gmail',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'TikTok',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'Messages',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'LinkedIn',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ));
                },
                child: Container(
                  height: 35.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.primary90,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.share,
                      color: AppColors.primary800,
                      //size: 20.h,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width * 0.92,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(250, 227, 227, 227),
                        width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/images/woman.jpg',
                          width: 86,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Dr. Jenny Wilson',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.star_rounded,
                                color: AppColors.primary,
                              ),
                              Text(
                                '4.9 (3821 reviews)',
                                style: GoogleFonts.roboto(
                                    color: AppColors.grey,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Cardio Specialist - New-Way Hospital',
                            style: GoogleFonts.roboto(
                                color: AppColors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 11.sp),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.92,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primary),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColors.primary90,
                            child: Center(
                              child: Icon(
                                Icons.people,
                                size: 27,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            '5000+',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                color: AppColors.primary,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Patients',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColors.primary90,
                            child: Center(
                              child: Icon(
                                Icons.person,
                                size: 27,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            '15+',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                color: AppColors.primary,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Work Years',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColors.primary90,
                            child: Center(
                              child: Icon(
                                Icons.chat,
                                size: 27,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            '3800+',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                color: AppColors.primary,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Reviews',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'About Doctor',
                    style: GoogleFonts.roboto(
                        color: AppColors.grey50,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Text(
                      'Dr. Jenny Wilson is the top most Cardiologist specialist\nin New-Way Hospital at London. She achieved several\nawards for her wonderful contribution in the medical\nfield. She is available for private consultation.',
                      style: GoogleFonts.roboto(
                          color: AppColors.grey50,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Working Time',
                    style: GoogleFonts.roboto(
                        color: AppColors.grey50,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Mon - Fri, 09.00 AM - 20.00 PM',
                    style: GoogleFonts.roboto(
                        color: AppColors.grey50,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text('Reviews',
                    style: GoogleFonts.roboto(
                        color: AppColors.grey50,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                GestureDetector(
                  onTap: () {
                    context.go('/reviews');
                  },
                  child: Text(
                    'See reviews',
                    style: GoogleFonts.roboto(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Make Appointment',
                    style: GoogleFonts.roboto(
                        color: AppColors.grey50,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const DayScroll(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/appointment1');
                },
                child: Text(
                  'Book Appointment',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
