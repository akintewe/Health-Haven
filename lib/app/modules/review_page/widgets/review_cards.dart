import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReviewCards extends StatefulWidget {
  const ReviewCards({super.key});

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
                radius: 40,
                backgroundImage: AssetImage(
                  'assets/images/person1.jpg',
                )),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    
                  ],
                )
          ],
        ),
      ),
    );
  }
}
