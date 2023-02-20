import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectAgeWidget extends StatefulWidget {
  final String age;
  const SelectAgeWidget({super.key, required this.age});

  @override
  State<SelectAgeWidget> createState() => _SelectAgeWidgetState();
}

class _SelectAgeWidgetState extends State<SelectAgeWidget> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isPressed = !isPressed;
        setState(() {});
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.23,
        decoration: BoxDecoration(
          color: isPressed ? AppColors.primary : Colors.white,
          border: Border.all(color: AppColors.primary, width: 2),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            widget.age,
            style: GoogleFonts.roboto(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: isPressed ? Colors.white : AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
