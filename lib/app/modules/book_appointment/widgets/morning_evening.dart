import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MorningEvening extends StatefulWidget {
  const MorningEvening({super.key});

  @override
  State<MorningEvening> createState() => _MorningEveningState();
}

class _MorningEveningState extends State<MorningEvening> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColors.primary,
          )),
    );
  }
}
