import 'package:cancer_chat/app/modules/review_page/widgets/review_cards.dart';
import 'package:cancer_chat/app/modules/review_page/widgets/star_scroll_review_widget.dart';
import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              context.go('/doctor-1');
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary,
              size: 26,
            )),
        title: Text(
          'Reviews',
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold, fontSize: 34, color: Colors.black),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: AppColors.primary90,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Image.asset(
                  'assets/icons/filter.png',
                  width: 30,
                )),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: 10,
        ),
        StarScroll(),
        SizedBox(
          height: 10,
        ),
        ReviewCards(),
      ]),
    );
  }
}
