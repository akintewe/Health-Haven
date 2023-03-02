
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import '../../../values/enums.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:another_flushbar/flushbar.dart';

import '../../theme/colors.dart';
import 'globalContext_service.dart';

appToast( String message, {AppToastType appToastType = AppToastType.success,
    Color backgroundColor = AppColors.grey, int duration = 3}
    ) {

      var context = GlobalContextService.navigatorKey.currentContext;
      var context1 = GlobalContextService.navigatorKey.currentState!.context;

        final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  
  double maxWidth = MediaQuery.of(navKey.currentState!.context).size.width / 1.4;
  return Flushbar(
    messageText: Text(
      message,
      textAlign: TextAlign.center,
      style:  TextStyle(
        color: AppColors.primary90,
        fontSize: 14.sp,
      ),
    ),
    margin: const EdgeInsets.only(top: 20.0),
    backgroundColor: appToastType == AppToastType.success
        ? AppColors.green40
        : appToastType == AppToastType.failed
            ? AppColors.red
            : appToastType == AppToastType.normal
                ? AppColors.grey
                : backgroundColor,
    maxWidth: maxWidth,
    flushbarPosition: FlushbarPosition.TOP,
    borderRadius: BorderRadius.circular(10),
    duration: Duration(seconds: duration),
  ).show(navKey.currentState!.context);
}

runToast(String message,
    {Toast length = Toast.LENGTH_SHORT,
    ToastGravity toastGravity = ToastGravity.BOTTOM,
    Color? backgroundColor,
    Color? textColor}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: length,
      backgroundColor: backgroundColor,
      textColor: textColor,
      timeInSecForIosWeb: length == Toast.LENGTH_SHORT ? 1 : 3,
      gravity: toastGravity);
}
