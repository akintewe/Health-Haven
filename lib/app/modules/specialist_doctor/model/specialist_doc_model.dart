import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class SpecialistDocModel{
 

   const SpecialistDocModel({
   required this.image, required this.title, required this.figure, required this.color,
  });
  
  final String image;
  final String title;
  final String figure;
  final Color color;

}

List<SpecialistDocModel> specialistDoctors = [  
  const SpecialistDocModel(image: "assets/icons/heart-shape2.png", 
              title: "Cardio Specialist", 
              figure:  "253 Doctors", color: AppColors.red,),

  const SpecialistDocModel(image: "assets/icons/heart-shape2.png", 
              title: "Dental Specialist", 
              figure:  "253 Doctors", color: Colors.blue,),

  const SpecialistDocModel(image: "assets/icons/heart-shape2.png", 
              title: "Eye Specialist", 
              figure:  "203 Doctors", color: AppColors.secondary60,),

  const SpecialistDocModel(image: "assets/icons/heart-shape2.png", 
              title: "Brain Specialist", 
              figure:  "253 Doctors", color: AppColors.red,),
  const SpecialistDocModel(image: "assets/icons/heart-shape2.png", 
              title: "Mouth Specialist", 
              figure:  "283 Doctors", color: Colors.blue,),
  const SpecialistDocModel(image: "assets/icons/heart-shape2.png", 
              title: "Child Specialist", 
              figure:  "253 Doctors", color: AppColors.secondary60,),
  const SpecialistDocModel(image: "assets/icons/heart-shape2.png", 
              title: "Nerve Specialist", 
              figure:  "253 Doctors", color:AppColors.red,),
  const SpecialistDocModel(image: "assets/icons/heart-shape2.png", 
              title: "Sex Specialist", 
              figure:  "253 Doctors", color: Colors.blue,),
];