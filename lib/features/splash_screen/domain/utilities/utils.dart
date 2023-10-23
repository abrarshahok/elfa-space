import 'dart:async';

import 'package:elfa_main_dashboard/features/enableLoction_screen/presentation/pages/enable_location_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../presentation/provider/splashScreenAnimator.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  void splashService(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Provider.of<SplashScreenAnimator>(context, listen: false)
          .triggerAnimation();

      Timer(const Duration(milliseconds: 400), () {
        Navigator.pushNamed(context, enableLocationScreen.routeName);
      });
    });

    // Timer(const Duration(seconds: 4), () {
    //   Provider.of<SplashScreenAnimator>(context, listen: false)
    //       .triggerAnimation();
    // });
  }

  void showMsg(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
