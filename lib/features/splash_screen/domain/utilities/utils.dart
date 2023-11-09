import 'dart:async';

import 'package:elfa_main_dashboard/features/enableLoction_screen/presentation/pages/enable_location_screen.dart';
import 'package:elfa_main_dashboard/news_feed/app/app_drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../presentation/provider/splash_screen_animator.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  void splashService(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Provider.of<SplashScreenAnimator>(context, listen: false)
          .triggerAnimation();

      Timer(const Duration(milliseconds: 400), () {
        User? user = FirebaseAuth.instance.currentUser;

        if (user != null) {
          Navigator.pushReplacementNamed(context, AppDrawer.routeName);
        } else {
          Navigator.pushReplacementNamed(
              context, EnableLocationScreen.routeName);
        }
      });
    });
  }

  void showMsg(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
