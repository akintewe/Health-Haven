import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryCard extends StatefulWidget {
  final AssetImage image;
  final String name;
  final String message;
  final String time;
  const HistoryCard(
      {super.key,
      required this.image,
      required this.name,
      required this.message,
      required this.time});

  @override
  State<HistoryCard> createState() => _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.grey100,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: widget.image,
              radius: 35,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.name,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  widget.message,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.grey50),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                widget.time,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
