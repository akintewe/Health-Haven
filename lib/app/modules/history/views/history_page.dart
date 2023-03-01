import 'package:cancer_chat/app/modules/history/widgets/history_card_widget.dart';
import 'package:cancer_chat/app/modules/my_appointments/views/my_appointment.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';

import '../../../../core/theme/colors.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Remix.shield_cross_fill,
            color: AppColors.primary,
            size: 50,
          ),
          onPressed: () {
            context.go('/home-page');
          },
        ),
        title: Text(
          'History',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 26,
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.primary100,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_rounded,
                      color: AppColors.primary,
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
      body: ContainedTabBarView(
        tabs: const [
          Text('Messaging'),
          Text('Voice Call'),
          Text('Video Call'),
        ],
        tabBarProperties: TabBarProperties(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          indicator: ContainerTabIndicator(
            width: MediaQuery.of(context).size.width * 0.3,
            radius: BorderRadius.circular(16.0),
            color: AppColors.primary,
            borderWidth: 2.0,
            borderColor: AppColors.primary,
          ),
          labelColor: Colors.white,
          unselectedLabelColor: AppColors.primary,
        ),
        views: [
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RoundedSearchBar(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Today',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: AppColors.grey50,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  HistoryCard(
                      image: AssetImage('assets/images/person2.jpg'),
                      name: 'Dr. Eleanor Pena',
                      message: 'Ok, thanks for your time',
                      time: '10:30'),
                  HistoryCard(
                      image: AssetImage('assets/images/person1.jpg'),
                      name: 'Dr. Ronalds Richards',
                      message: 'It was great',
                      time: '09:20'),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Yesterday, March 2 2023',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: AppColors.grey50,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  HistoryCard(
                      image: AssetImage('assets/images/person3.jpg'),
                      name: 'Dr. Eleanor Pena',
                      message: 'Ok, thanks for your time',
                      time: '10:30'),
                  HistoryCard(
                      image: AssetImage('assets/images/doctor1.jpg'),
                      name: 'Dr. Eleanor Pena',
                      message: 'Ok, thanks for your time',
                      time: '10:30'),
                  HistoryCard(
                      image: AssetImage('assets/images/doctor2.jpg'),
                      name: 'Dr. Eleanor Pena',
                      message: 'Ok, thanks for your time',
                      time: '10:30'),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Image.asset('assets/images/sad-face.png'),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'You don\'t have an appointment',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.26,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/appointment1');
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(
                      'Book Appointment Now',
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
          Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Image.asset('assets/images/sad-face.png'),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'You don\'t have an appointment',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.26,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/appointment1');
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(
                      'Book Appointment Now',
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
        ],
      ),
    );
  }
}
