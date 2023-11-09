import 'dart:async';
import '/features/carsouelSlide/presentation/pages/carsouel_slide.dart';
import '/features/enableLoction_screen/presentation/pages/enable_location_screen.dart';
import '/news_feed/app/app_drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import '../../presentation/provider/splash_screen_animator.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  void splashService(BuildContext context) {
    final navigator = Navigator.of(context);
    Timer(const Duration(seconds: 3), () {
      Provider.of<SplashScreenAnimator>(context, listen: false)
          .triggerAnimation();

      Timer(const Duration(milliseconds: 400), () async {
        User? user = FirebaseAuth.instance.currentUser;
        final permissionStatus = await Permission.location.status;
        if (user != null) {
          navigator.pushReplacementNamed(AppDrawer.routeName);
        } else if (!permissionStatus.isGranted) {
          navigator.pushReplacementNamed(EnableLocationScreen.routeName);
        } else {
          navigator.pushReplacementNamed(CarsouelSlide.routeName);
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
