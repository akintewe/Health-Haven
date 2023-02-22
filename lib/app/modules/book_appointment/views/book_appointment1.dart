import 'package:cancer_chat/app/modules/book_appointment/widgets/fee_information_widget.dart';
import 'package:cancer_chat/app/modules/book_appointment/widgets/morning_evening.dart';
import 'package:cancer_chat/app/modules/book_appointment/widgets/time_widget.dart';
import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/booking_title.dart';

class BookAppointment1 extends StatefulWidget {
  const BookAppointment1({super.key});

  @override
  State<BookAppointment1> createState() => _BookAppointment1State();
}

class _BookAppointment1State extends State<BookAppointment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              context.go('/myAppointment');
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary,
              size: 29,
            )),
        title: Text(
          'Book Appointment',
          style: GoogleFonts.roboto(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const bookingTitle(
              title: 'Monday, March 25 2022',
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                MorningEvening(
                  timeIcon: Icons.sunny,
                  time: 'Morning',
                ),
                MorningEvening(
                  timeIcon: Icons.lightbulb,
                  time: 'Evening',
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const bookingTitle(title: 'Choose the Hour'),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                TimeWidget(time: '09:00AM'),
                TimeWidget(time: '10:00AM'),
                TimeWidget(time: '11:00AM'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                TimeWidget(time: '13:00AM'),
                TimeWidget(time: '14:00AM'),
                TimeWidget(time: '15:00AM'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                TimeWidget(time: '17:00AM'),
                TimeWidget(time: '18:00AM'),
                TimeWidget(time: '19:00AM'),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const bookingTitle(title: 'Fee information'),
            const SizedBox(
              height: 15,
            ),
            const FeeInfoWidget(
              comment: 'Can message with doctor',
              header: 'Messaging',
              price: '\$5',
              icon: Icons.message,
            ),
            const SizedBox(
              height: 15,
            ),
            const FeeInfoWidget(
                header: 'Voice Call',
                comment: 'Can make call with doctor',
                icon: Icons.phone,
                price: '\$10'),
            const SizedBox(
              height: 15,
            ),
            const FeeInfoWidget(
                header: 'Video Call',
                comment: 'Can video call with doctor',
                icon: Icons.video_call,
                price: '\$20'),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/patientDetails');
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: Text(
                  'Next',
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
