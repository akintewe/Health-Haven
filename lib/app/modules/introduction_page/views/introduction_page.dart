import 'package:cancer_chat/core/theme/colors.dart';
import 'package:cancer_chat/core/utils/functions/size_fit.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: -160,
              child: Container(
                height: MediaQuery.of(context).size.height * 1.1,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/doctor3.jpg'),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              top: 100,
              left: MediaQuery.of(context).size.width * 0.86,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.6,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.57,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 6,
                          width: 60,
                          decoration: BoxDecoration(
                              color: AppColors.grey100,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.06),
                        Text('Thousands of ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                              fontSize: 30,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.06),
                        Text('Doctors',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                              fontSize: 30,
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.092,
                          width: MediaQuery.of(context).size.width * 0.18,
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(100)),
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => IntroPage2()));
                              },
                              icon: Icon(Icons.arrow_forward_ios_rounded),
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.07),
                            Text(
                              'You can easily contact with ',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.07),
                            Text(
                              'thousands of doctors and professional',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.07),
                            Text(
                              'medical experts for your needs.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )
                          ],
                        )
                      ],
                    )
                  ])))
        ],
      ),
    );
  }
}

class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: -100,
              child: Container(
                height: MediaQuery.of(context).size.height * 1.1,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/doctor2.jpg'),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              top: 100,
              left: MediaQuery.of(context).size.width * 0.86,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.6,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.57,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 7,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        height: 6,
                        width: 60,
                        decoration: BoxDecoration(
                            color: AppColors.grey100,
                            borderRadius: BorderRadius.circular(20)),
                      )
                    ]),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.06),
                        Text('Chat with',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: AppColors.primary,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.06),
                        Text('Doctors',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: AppColors.primary,
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.093,
                          width: MediaQuery.of(context).size.width * 0.18,
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(100)),
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => IntroPage3()));
                              },
                              icon: Icon(Icons.arrow_forward_ios_rounded),
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.07),
                            Text(
                              'Book an appointment with any doctor.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.07),
                            Text(
                              'Chat with any doctor easily,',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.07),
                            Text(
                              'and get consultation.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ])))
        ],
      ),
    );
  }
}

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: -190,
              child: Container(
                height: MediaQuery.of(context).size.height * 1.1,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/doctor1.jpg'),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              top: 100,
              left: MediaQuery.of(context).size.width * 0.86,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.6,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.57,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 4,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 6,
                        width: 60,
                        decoration: BoxDecoration(
                            color: AppColors.grey100,
                            borderRadius: BorderRadius.circular(20)),
                      )
                    ]),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.06),
                        Text('Track your',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: AppColors.primary,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.06),
                        Text('appointments',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: AppColors.primary,
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.06),
                        Text('the easy way..',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: AppColors.primary,
                            )),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 65,
                              width: 200,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  )),
                                  onPressed: () {},
                                  child: Center(
                                    child: Text(
                                      'Get Started',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  )),
                            ),
                            // Container(
                            //   height: MediaQuery.of(context).size.height * 0.08,
                            //   width: MediaQuery.of(context).size.width * 0.6,
                            //   decoration: BoxDecoration(
                            //     color: AppColors.primary,
                            //     borderRadius: BorderRadius.circular(30),
                            //   ),
                            //   child: Center(
                            //       child: GestureDetector(
                            //     onTap: () {},
                            //     child: Text(
                            //       'Get Started',
                            //       style: TextStyle(
                            //           color: Colors.white,
                            //           fontWeight: FontWeight.w500,
                            //           fontSize: 20),
                            //     ),
                            //   )),
                            // )
                          ],
                        )
                      ],
                    )
                  ])))
        ],
      ),
    );
  }
}
