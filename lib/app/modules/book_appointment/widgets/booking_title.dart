import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/colors.dart';

class bookingTitle extends StatelessWidget {
  final String title;
  const bookingTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: GoogleFonts.roboto(
            color: AppColors.grey50,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        )
      ],
    );
  }
}
