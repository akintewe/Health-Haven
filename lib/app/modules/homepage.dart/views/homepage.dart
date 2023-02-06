import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Doctor Q',
          style: GoogleFonts.actor(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 60,
                width: 61,
                decoration: BoxDecoration(
                    color: AppColors.primary100,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Icon(
                  Icons.notifications,
                  size: 30,
                  color: AppColors.primary800,
                )),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: AppColors.primary100,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Image.asset(
                    'assets/images/heart.png',
                    width: 28,
                  ),
                ),
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
        child: Column(
          children: [
            SearchBarAnimation(
              textEditingController: TextEditingController(),
              isOriginalAnimation: false,
              buttonBorderColour: Colors.black45,
              buttonWidget: Icon(Icons.search),
              secondaryButtonWidget: Icon(Icons.cancel),
              trailingWidget: Icon(Icons.sort),
              onFieldSubmitted: (String value) {
                debugPrint('onFieldSubmitted value $value');
              },
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Specialist Doctor',
                  style: GoogleFonts.b612Mono(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      color: AppColors.primary400, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                      
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
