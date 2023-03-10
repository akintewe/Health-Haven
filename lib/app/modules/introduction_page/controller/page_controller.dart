import 'package:cancer_chat/app/modules/introduction_page/views/introduction_page.dart';
import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Introduction extends StatelessWidget {
  final _controller = PageController();

  Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: PageView(
                  controller: _controller,
                  children: const [IntroPage(), IntroPage2(), IntroPage3()],
                ),
              ),
              Positioned(
                bottom: 20,
                left: 280,
                right: 10,
                child: SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const JumpingDotEffect(
                      activeDotColor: AppColors.primary,
                      verticalOffset: 20,
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
