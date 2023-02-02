import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/utils/functions/size_fit.dart';

class DashboardScreen extends StatelessWidget {
  final Widget child;
  const DashboardScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: Center(
      child: LottieBuilder.asset('assets/animation/medic.json'),
    ));
  }
}
