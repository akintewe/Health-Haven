import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewCards extends StatefulWidget {
  final String name;
  final String date;
  final String comment;
  final String rate;
  final String picture;
  const ReviewCards(
      {super.key,
      required this.name,
      required this.date,
      required this.comment,
      required this.rate,
      required this.picture});

  @override
  State<ReviewCards> createState() => _ReviewCardsState();
}

class _ReviewCardsState extends State<ReviewCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.grey100),
      ),
      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
                radius: 35, backgroundImage: AssetImage(widget.picture)),
            SizedBox(
              width: 18,
            ),
            Column(
              children: [
                SizedBox(
                  height: 17,
                ),
                Text(
                  widget.name,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.date,
                  style: GoogleFonts.roboto(
                      color: AppColors.grey50, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.comment,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600, fontSize: 16),
                )
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: AppColors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          widget.rate,
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 19),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
