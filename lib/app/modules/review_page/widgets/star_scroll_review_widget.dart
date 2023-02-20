import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class StarScroll extends StatefulWidget {
  const StarScroll({super.key});

  @override
  State<StarScroll> createState() => _StarScrollState();
}

class _StarScrollState extends State<StarScroll> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ScrollWidget(
            rate: 'All',
          ),
          SizedBox(
            width: 10,
          ),
          ScrollWidget(
            rate: '5',
          ),
          SizedBox(
            width: 10,
          ),
          ScrollWidget(
            rate: '4',
          ),
          SizedBox(
            width: 10,
          ),
          ScrollWidget(
            rate: '3',
          ),
          SizedBox(
            width: 10,
          ),
          ScrollWidget(
            rate: '2',
          ),
          SizedBox(
            width: 10,
          ),
          ScrollWidget(
            rate: '1',
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class ScrollWidget extends StatefulWidget {
  final String rate;

  const ScrollWidget({
    Key? key,
    required this.rate,
  }) : super(key: key);

  @override
  State<ScrollWidget> createState() => _ScrollWidgetState();
}

class _ScrollWidgetState extends State<ScrollWidget> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isPressed = !isPressed;
        setState(() {});
      },
      child: Container(
        height: 45,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isPressed ? AppColors.primary : AppColors.white,
            border: Border.all(
              color: AppColors.primary,
              width: 2,
            )),
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.star_rounded,
                  color: isPressed ? AppColors.white : AppColors.primary),
              SizedBox(
                width: 5,
              ),
              Text(
                widget.rate,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: isPressed ? AppColors.white : AppColors.primary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
