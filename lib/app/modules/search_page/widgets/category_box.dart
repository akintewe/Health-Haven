import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/colors.dart';

class CategoryBox extends StatelessWidget {
  final String category;
  const CategoryBox({
    super.key,
    required this.isCurrent, required this.category,
  });
  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 14.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
          color: isCurrent ? AppColors.primary800 : AppColors.white,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
              color: AppColors.primary800, style: BorderStyle.solid)),
      child: FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.contain,
          child: Text(
            category,
            style: GoogleFonts.actor(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
          )),
    );
  }
}
