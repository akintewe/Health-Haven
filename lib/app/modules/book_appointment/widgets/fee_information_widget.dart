import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class FeeInfoWidget extends StatefulWidget {
  const FeeInfoWidget({super.key});

  @override
  State<FeeInfoWidget> createState() => _FeeInfoWidgetState();
}

class _FeeInfoWidgetState extends State<FeeInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.grey80,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primary100,
            radius: 30,
            child: Icon(Icons.message),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                'Messaging',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Can message with doctor', style: GoogleFonts.roboto(
                
              ),)
            ],
          )
        ],
      ),
    );
  }
}
