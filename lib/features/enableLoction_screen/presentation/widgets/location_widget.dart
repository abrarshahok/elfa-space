import '/features/carsouelSlide/presentation/pages/carsouel_slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../../constants.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await checkPermission(context);
      },
      child: Container(
        height: 60.sp,
        width: 310.sp,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: kgradientColors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Text(
            'Ok, I Understand',
            style: TextStyle(color: Colors.white, fontSize: 15.sp),
          ),
        ),
      ),
    );
  }
}

Future<void> checkPermission(BuildContext context) async {
  final status = await Permission.location.request();
  if (status.isGranted) {
    // ignore: use_build_context_synchronously
    Navigator.pushNamed(context, CarsouelSlide.routeName);
  }
}
