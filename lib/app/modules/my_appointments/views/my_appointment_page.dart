import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/colors.dart';
import '../widgets/my_appointment_card_widget.dart';

class MyAppointmentPage extends StatefulWidget {
  const MyAppointmentPage({super.key});

  @override
  State<MyAppointmentPage> createState() => _MyAppointmentPageState();
}

class _MyAppointmentPageState extends State<MyAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.go('/myAppointment');
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: AppColors.primary,
          ),
        ),
        title: Text(
          'My Appointments',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 23,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AppointmentCard(
                  image: 'assets/images/doctor3.jpg',
                  name: 'DR. Mary Steward',
                  mode: 'Messages - ',
                  status: 'Completed',
                  time: '15:00 - 16:30PM',
                  icon1: Icons.message,
                  icon2: Icons.message,
                ),
              ],
            ),
            SizedBox(
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
                    children: [
                      SizedBox(
                        width: 20,
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
                      Flexible(
                        child: const SizedBox(
                          width: 60,
                        ),
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
                      Flexible(
                        child: const SizedBox(
                          width: 60,
                        ),
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
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(color: AppColors.grey90),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Visit Time',
                  style: GoogleFonts.roboto(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Morning',
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Monday, March 27 2023',
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  '10:00 - 10:30AM',
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(color: AppColors.grey90),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Patient Information',
                  style: GoogleFonts.roboto(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Full Name : ${FirebaseAuth.instance.currentUser!.displayName}',
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Age : 20',
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Email : ${FirebaseAuth.instance.currentUser!.email}',
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(color: AppColors.grey90),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Fee Information',
                  style: GoogleFonts.roboto(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  '\$5 (Paid)',
                  style: GoogleFonts.roboto(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.83,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: Text(
                  'Message Now  (Start at 10:00AM)',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
