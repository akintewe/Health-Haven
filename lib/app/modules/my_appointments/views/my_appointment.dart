import 'package:cancer_chat/app/modules/my_appointments/widgets/my_appointment_card_widget.dart';
import 'package:cancer_chat/core/theme/colors.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';

class MyAppointment extends StatefulWidget {
  const MyAppointment({super.key});

  @override
  State<MyAppointment> createState() => _MyAppointmentState();
}

class _MyAppointmentState extends State<MyAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Remix.shield_cross_fill,
          color: AppColors.primary,
          size: 50,
        ),
        title: Text(
          'My Appointments',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 23,
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
          Text('First'),
          //is this not supposed to bed Upcoming and past appointments ??
          Text('Second'),
        ],
        tabBarProperties: TabBarProperties(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          indicator: ContainerTabIndicator(
            width: MediaQuery.of(context).size.width * 0.5,
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
            color: AppColors.white,
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
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RoundedSearchBar(),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Wednesday, March 27 2022',
                        style: GoogleFonts.roboto(
                          color: AppColors.grey60,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppointmentCard(
                    image: 'assets/images/doctor2.jpg',
                    name: 'DR. Guy Hawkins',
                    mode: 'Voice Call - ',
                    status: 'Completed',
                    time: '13:00 - 13:30PM',
                    icon1: Icons.call,
                    icon2: Icons.call,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const AppointmentCard(
                    image: 'assets/images/doctor3.jpg',
                    name: 'DR. Mary Steward',
                    mode: 'Messages - ',
                    status: 'Completed',
                    time: '15:00 - 16:30PM',
                    icon1: Icons.message,
                    icon2: Icons.message,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Monday, March 24 2022',
                        style: GoogleFonts.roboto(
                          color: AppColors.grey60,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppointmentCard(
                    image: 'assets/images/person1.jpg',
                    name: 'DR. Kareem King',
                    mode: 'Video Call - ',
                    status: 'Completed',
                    time: '18:00 - 18:30PM',
                    icon1: Icons.video_call,
                    icon2: Icons.video_call,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
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
            ),
          ),
        ],
        onChange: (index) => print(index),
      ),
    );
  }
}

class RoundedSearchBar extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const RoundedSearchBar({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              onChanged: onChanged,
              decoration: const InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
              ),
            ),
          ),
          const Icon(Icons.search),
        ],
      ),
    );
  }
}
