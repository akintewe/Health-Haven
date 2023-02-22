import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/colors.dart';

class NotificationsCard extends StatelessWidget {
  const NotificationsCard({
    super.key,
    required this.title,
    required this.content,
    required this.color,
    required this.icon,
  });

  final String title;
  final String content;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(children: [
        Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 60,
            width: 60,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Icon(
              icon,
              color: AppColors.white,
            )),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w700, fontSize: 13),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              content,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.roboto(fontSize: 10),
            ),
          ],
        )
      ]),
    );
  }
}
