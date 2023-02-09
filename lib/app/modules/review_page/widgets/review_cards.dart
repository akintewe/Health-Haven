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
      height: 80,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(),
      ),
    );
  }
}