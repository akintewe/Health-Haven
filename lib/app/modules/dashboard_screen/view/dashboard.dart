import 'package:flutter/material.dart';

import '../../../../core/utils/functions/size_fit.dart';

class DashboardScreen extends StatelessWidget {
  final Widget child;
  const DashboardScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Row(
      children: [
        SizedBox(
          width: fitWidth(280),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: fitHeight(35),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Image.asset(
                        '',
                        height: fitHeight(40),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
            child: child,
          ),
        )
      ],
    ));
  }
}
