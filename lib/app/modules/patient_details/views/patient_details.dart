import 'package:cancer_chat/app/modules/patient_details/widgets/patient_detail_title_widget.dart';
import 'package:cancer_chat/app/modules/patient_details/widgets/select_age_widget.dart';
import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientDetails extends StatefulWidget {
  const PatientDetails({super.key});

  @override
  State<PatientDetails> createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              context.go('/appointment1');
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary,
              size: 27,
            )),
        title: Text(
          'Patient Details',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            PatientTitleWidget(title: 'Full Name '),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, right: 8),
              child: TextFormField(
                controller: textEditingController,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Full Name',
                  hintStyle: GoogleFonts.roboto(
                    color: AppColors.grey70,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PatientTitleWidget(title: 'Select Your Age Range'),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SelectAgeWidget(
                    age: '10 +',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SelectAgeWidget(
                    age: '20 +',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SelectAgeWidget(
                    age: '30 +',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SelectAgeWidget(
                    age: '40 +',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SelectAgeWidget(
                    age: '50 +',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PatientTitleWidget(title: 'Phone Number'),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, right: 8),
              child: TextFormField(
                controller: textEditingController,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Phone Number',
                  suffixIcon: Icon(Icons.phone),
                  hintStyle: GoogleFonts.roboto(
                    color: AppColors.grey70,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
