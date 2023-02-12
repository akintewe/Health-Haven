import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';

import '../../../../core/theme/colors.dart';

class FavouriteDocCard extends StatelessWidget {
  const FavouriteDocCard({
    super.key, required this.name, required this.review, required this.title, required this.hospital,
  });
  
  final String name;
  final String review;
  final String title;
  final String hospital;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      padding: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(
            color: AppColors.grey100,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                image: DecorationImage(
                    image: AssetImage('assets/images/person2.jpg'),
                    fit: BoxFit.cover)),
            // child: Image.asset(
            //   ,
            //   height: 80,
            //   width: 80,
            // ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  const Icon(Remix.star_half_s_fill,
                      color: AppColors.primary400),
                  Text(
                    review,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Text(
                title,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              Text(
                hospital,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: AppColors.primary100,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Image.asset(
                'assets/images/heart.png',
                width: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
