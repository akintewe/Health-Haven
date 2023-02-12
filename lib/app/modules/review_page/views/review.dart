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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          StarScroll(),
          SizedBox(
            height: 10,
          ),
          ReviewCards(
            picture: 'assets/images/oldwoman1.jpg',
            name: 'Jane Cooper',
            date: 'December 20, 2021',
            comment: 'The doctor is great!',
            rate: '5',
          ),
          SizedBox(
            height: 10,
          ),
          ReviewCards(
            picture: 'assets/images/woman1.jpg',
            name: 'Arlene McCoy',
            date: 'December 12, 2020',
            comment: 'Really great service..',
            rate: '4',
          ),
          SizedBox(
            height: 10,
          ),
          ReviewCards(
            picture: 'assets/images/woman3.jpg',
            name: 'Savannah Bella',
            date: 'August 12, 2020',
            comment: 'perfect, i love it!',
            rate: '5',
          ),
          SizedBox(
            height: 10,
          ),
          ReviewCards(
            picture: 'assets/images/person2.jpg',
            name: 'Richard Kingson',
            date: 'August 12, 2020',
            comment: 'perfect, i love it!',
            rate: '5',
          ),
          SizedBox(
            height: 10,
          ),
          ReviewCards(
            picture: 'assets/images/woman3.jpg',
            name: 'Savannah Bella',
            date: 'August 12, 2020',
            comment: 'perfect, i love it!',
            rate: '5',
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: AppColors.primary, width: 3),
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {
                  context.go('/doctor-1');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back_rounded,
                      color: AppColors.primary,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Back',
                      style: GoogleFonts.roboto(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
