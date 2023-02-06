import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../core/utils/functions/size_fit.dart';
import 'homepage.dart/views/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();

    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(Duration(seconds: 4), () {});
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => IntroPage()));
    Get.to(
      const HomePage(),
      transition: Transition.fadeIn,
      duration: Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Center(
      child: LottieBuilder.asset('assets/animation/medic.json'),
    ));
  }
}
