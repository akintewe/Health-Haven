import 'package:flutter/material.dart';

class SpecialistDocModel {
  const SpecialistDocModel({
    required this.image,
    required this.title,
    required this.figure,
    required this.startColor,
    required this.endColor,
  });

  final String image;
  final String title;
  final String figure;
  final Color startColor;
  final Color endColor;
}

List<SpecialistDocModel> specialistDoctors = [
  const SpecialistDocModel(
    image: "assets/icons/heart-shape2.png",
    title: "Cardio Specialist",
    figure: "253 Doctors",
    startColor: Color(0xffE9607E),
    endColor: Color(0xffE73C63),
  ),
  const SpecialistDocModel(
    image: "assets/icons/heart-shape2.png",
    title: "Dental Specialist",
    figure: "253 Doctors",
    startColor: Color(0xff5C94FF),
    endColor: Color(0xff437FFE),
  ),
  const SpecialistDocModel(
    image: "assets/icons/heart-shape2.png",
    title: "Eye Specialist",
    figure: "203 Doctors",
    startColor: Color(0xffF6D66E),
    endColor: Color(0xffF3C222),
  ),
  const SpecialistDocModel(
    image: "assets/icons/heart-shape2.png",
    title: "Brain Specialist",
    figure: "253 Doctors",
    startColor: Color(0xffE85978),
    endColor: Color(0xffE73A5F),
  ),
  const SpecialistDocModel(
    image: "assets/icons/heart-shape2.png",
    title: "Mouth Specialist",
    figure: "283 Doctors",
    startColor: Color(0xff5D95FF),
    endColor: Color(0xff427CFE),
  ),
  const SpecialistDocModel(
    image: "assets/icons/heart-shape2.png",
    title: "Child Specialist",
    figure: "253 Doctors",
    startColor: Color(0xffF6D66E),
    endColor: Color(0xffF3C222),
  ),
  const SpecialistDocModel(
    image: "assets/icons/heart-shape2.png",
    title: "Nerve Specialist",
    figure: "253 Doctors",
    startColor: Color(0xffE9607E),
    endColor: Color(0xffE73C63),
  ),
  const SpecialistDocModel(
    image: "assets/icons/heart-shape2.png",
    title: "Sex Specialist",
    figure: "253 Doctors",
    startColor: Color(0xff5D95FF),
    endColor: Color(0xff427CFE),
  ),
];
