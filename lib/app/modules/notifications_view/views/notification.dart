import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';

import '../widgets/notifications_card.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 239, 245),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              context.go('/home-page');
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary,
              size: 27,
            )),
        title: Text(
          'Notification',
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 27,
          ),
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today, February 10 2023",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600, fontSize: 15),
                ),
                
                NotificationsCard(
                  title: "Appointment Alarm",
                  content:
                      "Your appointment will be start after 15\nminutes. Stay with your app and take care.",
                  color: Colors.red.shade400,
                  icon: Remix.alarm_line,
                ),
                //const SizedBox(height: 20,),
                const NotificationsCard(
                  title: "Appointment Confirmed",
                  content:
                      "Appointment confirmed Dr. Jerome Bell.\nCall will be held at 11:00 AM |22 Feb 23.",
                  color: AppColors.primary600,
                  icon: Remix.checkbox_circle_fill,
                ),
                  Text(
                  "Yesterday, February 6 2023",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600, fontSize: 15),
                ),
                
                const NotificationsCard(
                  title: "New Features Available",
                  content:
                      "Now you can mirror video while on\nvideo call",
                  color: AppColors.secondary60,
                  icon: Remix.alarm_line,
                ),
                   Text(
                  "Monday, February 1 2023",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600, fontSize: 15),
                ),
                
                NotificationsCard(
                  title: "Appointment Alarm",
                  content:
                      "Your appointment will be start after 15\nminutes. Stay with your app and take care.",
                  color: Colors.red.shade400,
                  icon: Remix.alarm_line,
                ),
                //const SizedBox(height: 20,),
                const NotificationsCard(
                  title: "Appointment Confirmed",
                  content:
                      "Appointment confirmed Dr. Jerome Bell.\nCall will be held at 11:00 AM |22 Feb 23.",
                  color: AppColors.primary600,
                  icon: Remix.checkbox_circle_fill,
                ),
              ],
            ),
          )),
    );
  }
}
