import 'package:cancer_chat/core/utils/functions/size_fit.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

abstract class AppTextStyle {
  //Header textstyles
  static TextStyle h1 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: fitHeight(56),
    color: AppColors.grey,
    height: 1.4,
  );
  static TextStyle h2 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: fitHeight(48),
    color: AppColors.grey,
    height: 1.4,
  );
  static TextStyle h3 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: fitHeight(40),
    color: AppColors.grey,
    height: 1.4,
  );
  static TextStyle h4 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: fitHeight(32),
    color: AppColors.grey,
    height: 1.4,
  );

  static TextStyle h5 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: fitHeight(24),
    color: AppColors.grey,
    height: 1.4,
  );

  static TextStyle h6 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: fitHeight(20),
    color: AppColors.grey,
    height: 1.4,
  );

  static TextStyle h6Meduim = h6.copyWith(fontWeight: FontWeight.w500);

  //Body text style for extra large
  static TextStyle bodyXLargeBold = TextStyle(
    fontWeight: FontWeight.w700,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(18),
  );
  static TextStyle bodyXLargeSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(18),
  );
  static TextStyle bodyXLargeMedium = TextStyle(
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
      color: AppColors.grey,
      fontSize: fitHeight(18));

  static TextStyle bodyXLargeReg = TextStyle(
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(18),
  );

  //Body textstyle for large
  static TextStyle bodyLargeBold = TextStyle(
    fontWeight: FontWeight.w700,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(16),
  );
  static TextStyle bodyLargeSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(16),
  );
  static TextStyle bodyLargeMedium = TextStyle(
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(16),
  );
  static TextStyle bodyLargeReg = TextStyle(
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(16),
  );

  //Body textstyle for meduim
  static TextStyle bodyMediumBold = TextStyle(
    fontWeight: FontWeight.w700,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(14),
  );
  static TextStyle bodyMediumSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(14),
  );
  static TextStyle bodyMediumMedium = TextStyle(
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(14),
  );
  static TextStyle bodyMediumReg = TextStyle(
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(14),
  );
  // Body textstyle for small
  static TextStyle bodySmallBold = TextStyle(
    fontWeight: FontWeight.w700,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(12),
  );
  static TextStyle bodySmallSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(12),
  );
  static TextStyle bodySmallMedium = TextStyle(
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(12),
  );
  static TextStyle bodySmallReg = TextStyle(
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(12),
  );

  // Body textstyle for Extra small
  static TextStyle bodyExtraSmallBold = TextStyle(
    fontWeight: FontWeight.w700,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(10),
  );
  static TextStyle bodyExtraSmallSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(10),
  );
  static TextStyle bodyExtraSmallMedium = TextStyle(
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(10),
  );
  static TextStyle bodyExtraSmallReg = TextStyle(
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
    color: AppColors.grey,
    fontSize: fitHeight(10),
  );
}

// //styleName: body/xlarge/semibold;
// font-family: Inter;
// font-size: 18px;
// font-weight: 600;
// line-height: 25px;
// letter-spacing: 0.20000000298023224px;
// text-align: left;

// //styleName: body/xlarge/regular;
// font-family: Inter;
// font-size: 18px;
// font-weight: 400;
// line-height: 25px;
// letter-spacing: 0.20000000298023224px;
// text-align: left;
