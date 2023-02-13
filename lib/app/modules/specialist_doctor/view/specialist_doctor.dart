import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

import '../model/specialist_doc_model.dart';
import '../widgets/specialist_doc_card.dart';

class SpecialistDoctor extends StatefulWidget {
  const SpecialistDoctor({super.key});

  @override
  State<SpecialistDoctor> createState() => _SpecialistDoctorState();
}

class _SpecialistDoctorState extends State<SpecialistDoctor> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 231, 239, 245),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              context.go('/home-page');
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary,
              size: 27,
            )),
        title: const Text(
          "Specialist Doctor",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        actions: [
          Row(
            children: [
              Container(
                  margin: const EdgeInsetsDirectional.only(end: 10),
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      color: AppColors.primary90,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Icon(
                    Remix.filter_3_fill,
                    color: AppColors.primary400,
                  )),
            ],
          ),
        
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: specialistDoctors.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemBuilder: (BuildContext context, int index) {
              final specialistDoctor = specialistDoctors[index];
              return  SpecialistDocCard(
                image: specialistDoctor.image,
                title: specialistDoctor.title,
                figure: specialistDoctor.figure,
                color: specialistDoctor.color,
              );
            }),
      ),
    );
  }
}
