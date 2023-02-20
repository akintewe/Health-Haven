import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class SpecialistDocCard extends StatelessWidget {
  const SpecialistDocCard({
    super.key, required this.image, required this.title, required this.figure, required this.color,
  });
  
  final String image;
  final String title;
  final String figure;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration:  BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(13))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
           const SizedBox(height: 15,),
           Text(
            title,
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10,),
           Text(
           figure,
            style: TextStyle(
                color: AppColors.white,
                fontSize: 12,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
