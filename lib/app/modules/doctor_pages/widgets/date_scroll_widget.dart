// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:cancer_chat/core/theme/colors.dart';

class DayScroll extends StatefulWidget {
  const DayScroll({super.key});

  @override
  State<DayScroll> createState() => _DayScrollState();
}

class _DayScrollState extends State<DayScroll> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Date_box(
            date: '12',
            day: 'Mon',
          ),
          SizedBox(
            width: 10,
          ),
          Date_box(
            day: 'Tue',
            date: '13',
          ),
          SizedBox(
            width: 10,
          ),
          Date_box(
            day: 'Wed',
            date: '14',
          ),
          SizedBox(
            width: 10,
          ),
          Date_box(
            day: 'Thur',
            date: '15',
          ),
          SizedBox(
            width: 10,
          ),
          Date_box(
            day: 'Fri',
            date: '16',
          ),
          SizedBox(
            width: 10,
          ),
          Date_box(
            day: 'Mon',
            date: '19',
          ),
          SizedBox(
            width: 10,
          ),
          Date_box(
            day: 'Tue',
            date: '20',
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class Date_box extends StatefulWidget {
  final String day;
  final String date;

  const Date_box({
    Key? key,
    required this.day,
    required this.date,
  }) : super(key: key);

  @override
  State<Date_box> createState() => _Date_boxState();
}

class _Date_boxState extends State<Date_box> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        isSelected = !isSelected;
        setState(() {});
      }),
      child: Container(
        height: 120,
        width: 90,
        decoration: BoxDecoration(
            color: isSelected ? AppColors.primary : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.primary, width: 2)),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              widget.day,
              style: GoogleFonts.roboto(
                  color: isSelected ? AppColors.white : AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.date,
              style: GoogleFonts.roboto(
                color: isSelected ? AppColors.white : AppColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
