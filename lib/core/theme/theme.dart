import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
      textTheme: GoogleFonts.interTextTheme(),
      colorScheme: ThemeData().colorScheme.copyWith(primary: AppColors.primary),
      scaffoldBackgroundColor: AppColors.white);
}
