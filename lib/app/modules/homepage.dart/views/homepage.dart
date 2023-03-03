import 'package:cancer_chat/app/modules/Profile/ProfilePage.dart';
import 'package:cancer_chat/app/modules/Profile/Profile_Settings.dart';
import 'package:cancer_chat/app/modules/book_appointment/views/book_appointment1.dart';
import 'package:cancer_chat/app/modules/doctor_pages/views/first_doctor.dart';
import 'package:cancer_chat/app/modules/history/views/history_page.dart';
import 'package:cancer_chat/app/modules/inapp_tour/in_app_tour_target.dart';
import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:remixicon/remixicon.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '../../inapp_tour/in_app_storage.dart';
import '../../my_appointments/views/my_appointment.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  TextEditingController textEditingController = TextEditingController();
  static const List<Widget> _widgetOptions = <Widget>[
    MainHomePage(),
    MyAppointment(),
    HistoryPage(),
    ProfileSettings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        gap: 6,
        activeColor: AppColors.primary600,
        color: AppColors.primary600,
        tabBackgroundColor: AppColors.primary100,
        padding: EdgeInsets.all(18),
        tabBorderRadius: 15,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.calendar_month,
            text: 'Appointment',
          ),
          GButton(
            icon: Icons.list,
            text: 'History',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final notifications = GlobalKey();
  final likes = GlobalKey();
  final search = GlobalKey();
  final doctorSections = GlobalKey();
  final topDoctors = GlobalKey();

  late TutorialCoachMark tutorialCoachMark;
  bool isSaved = false;

  void _initAddSitInAppTour() {
    tutorialCoachMark = TutorialCoachMark(
        targets: addSiteTargetsPage(
          notifications: notifications,
          likes: likes,
          search: search,
          doctorSections: doctorSections,
          topDoctors: topDoctors,
        ),
        colorShadow: AppColors.primary,
        paddingFocus: 10,
        hideSkip: false,
        opacityShadow: 0.8,
        onFinish: () {
          print('completed');
          SaveInAppTour().saveAddSiteStatus();
        });
  }

  void _showInAppTour() {
    Future.delayed(Duration(seconds: 2), () {
      SaveInAppTour().getAddSiteStatus().then((value) {
        if (value == false) {
          tutorialCoachMark.show(context: context);
        } else {
          print('User has seen this page');
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initAddSitInAppTour();
    _showInAppTour();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Row(
          children: [
            Container(
              margin: const EdgeInsetsDirectional.only(start: 10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(13)),
              child: const Center(
                child: Icon(
                  Remix.shield_cross_fill,
                ),
              ),
            ),
          ],
        ),
        centerTitle: false,
        titleSpacing: 0,
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Health-H',
          style: GoogleFonts.actor(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  context.go("/notificationView");
                  // context.go("/notifications"),
                },
                child: Container(
                  key: notifications,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: AppColors.primary100,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Icon(
                    Icons.notifications,
                    size: 22,
                    color: AppColors.primary800,
                  )),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {
                  context.push("/favouritesView");
                },
                child: Container(
                  key: likes,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: AppColors.primary100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Image.asset(
                      'assets/images/heart.png',
                      width: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SearchBarAnimation(
              key: search,
              textEditingController: TextEditingController(),
              isOriginalAnimation: false,
              buttonBorderColour: Colors.black45,
              buttonWidget: const Icon(Icons.search),
              secondaryButtonWidget: const Icon(Icons.cancel),
              trailingWidget: const Icon(Icons.sort),
              onFieldSubmitted: (String value) {
                debugPrint('onFieldSubmitted value $value');
              },
              onPressButton: (hello) {
                context.push("/searchPage");
              },
              onChanged: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Specialist Doctor',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    context.push('/specialistDoctor');
                  },
                  child: const Text(
                    'See all',
                    style: TextStyle(
                        color: AppColors.primary400,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                key: doctorSections,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 260,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 225, 74, 124)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset('assets/icons/heart-shape2.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Cardio',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const Text(
                          'Specialist',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          '200 Doctors',
                          style: GoogleFonts.b612Mono(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 260,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.primary300),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          'assets/icons/tooth1.png',
                          width: 64,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Dental',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const Text(
                          'Specialist',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          '168 Doctors',
                          style: GoogleFonts.b612Mono(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 260,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 193, 157, 223)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset('assets/icons/view.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Eye',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const Text(
                          'Specialist',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          '300 Doctors',
                          style: GoogleFonts.b612Mono(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 260,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset('assets/icons/bone.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Human',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const Text(
                          'Chiropractor',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          '60 Doctors',
                          style: GoogleFonts.b612Mono(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Top Doctors',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    context.push("/topDoctors");
                  },
                  child: const Text(
                    'See all',
                    style: TextStyle(
                        color: AppColors.primary400,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                key: topDoctors,
                children: [
                  GestureDetector(
                    onTap: () => context.go('/doctor-1'),
                    child: Container(
                      height: 280,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 247, 246, 246),
                              width: 3),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Positioned(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/person1.jpg',
                                  height: 200,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Positioned(
                              bottom: 30,
                              left: 30,
                              child: Text(
                                'Dr. Yusuf Rashmid',
                                style: GoogleFonts.balooDa2(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              )),
                          Positioned(
                              bottom: 6,
                              left: 30,
                              child: Text(
                                'Cardio Specialist',
                                style: GoogleFonts.b612Mono(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                              ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () => context.go('/doctor-1'),
                    child: Container(
                      height: 280,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 247, 246, 246),
                              width: 3),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Positioned(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/person2.jpg',
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Positioned(
                              bottom: 30,
                              left: 30,
                              child: Text(
                                'Dr. James Doney',
                                style: GoogleFonts.balooDa2(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              )),
                          Positioned(
                              bottom: 6,
                              left: 30,
                              child: Text(
                                'Eye Specialist',
                                style: GoogleFonts.b612Mono(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                              ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () => context.go('/doctor-1'),
                    child: Container(
                      height: 280,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 247, 246, 246),
                              width: 3),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Positioned(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/person3.jpg',
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Positioned(
                              bottom: 30,
                              left: 30,
                              child: Text(
                                'Dr. Peter Jones',
                                style: GoogleFonts.balooDa2(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              )),
                          Positioned(
                              bottom: 6,
                              left: 30,
                              child: Text(
                                'Chemo Specialist',
                                style: GoogleFonts.b612Mono(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                              )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () => context.go('/doctor-1'),
                    child: Container(
                      height: 280,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 247, 246, 246),
                              width: 3),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Positioned(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/woman.jpg',
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Positioned(
                              bottom: 30,
                              left: 30,
                              child: Text(
                                'Dr. Mia Roseline',
                                style: GoogleFonts.balooDa2(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              )),
                          Positioned(
                              bottom: 6,
                              left: 30,
                              child: Text(
                                'Human Chiropractor',
                                style: GoogleFonts.b612Mono(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text('Connect with other users!   Coming soon....'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
