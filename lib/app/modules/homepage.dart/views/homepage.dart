import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/app-logo.png'),
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Doctor Q',
          style: GoogleFonts.actor(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 60,
                width: 61,
                decoration: BoxDecoration(
                    color: AppColors.primary100,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Icon(
                  Icons.notifications,
                  size: 30,
                  color: AppColors.primary800,
                )),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: AppColors.primary100,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Image.asset(
                    'assets/images/heart.png',
                    width: 28,
                  ),
                ),
              ),
              SizedBox(
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
              textEditingController: TextEditingController(),
              isOriginalAnimation: false,
              buttonBorderColour: Colors.black45,
              buttonWidget: Icon(Icons.search),
              secondaryButtonWidget: Icon(Icons.cancel),
              trailingWidget: Icon(Icons.sort),
              onFieldSubmitted: (String value) {
                debugPrint('onFieldSubmitted value $value');
              },
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Specialist Doctor',
                  style: GoogleFonts.b612Mono(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      color: AppColors.primary400, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 260,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 225, 74, 124)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset('assets/icons/heart-shape2.png'),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Cardio',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Specialist',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
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
                  SizedBox(
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
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          'assets/icons/tooth1.png',
                          width: 64,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Dental',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Specialist',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
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
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 260,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 193, 210, 91)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset('assets/icons/view.png'),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Eye',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Specialist',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
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
                  SizedBox(
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
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset('assets/icons/bone.png'),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Human',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Chiropractor',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
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
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Top Doctors',
                  style: GoogleFonts.b612Mono(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      color: AppColors.primary400, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 280,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 247, 246, 246),
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
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 280,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 247, 246, 246),
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
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 280,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 247, 246, 246),
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
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
