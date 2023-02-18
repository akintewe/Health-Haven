import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FeeInfoWidget extends StatefulWidget {
  const FeeInfoWidget({super.key});

  @override
  State<FeeInfoWidget> createState() => _FeeInfoWidgetState();
}

class _FeeInfoWidgetState extends State<FeeInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grey60,
        )
      ),
    );
  }
}