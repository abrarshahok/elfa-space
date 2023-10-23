import 'package:elfa_main_dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarsouelBody extends StatelessWidget {
  final String text1, text2, image;
  const CarsouelBody({
    super.key,
    required this.text1,
    required this.text2,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        image,
        height: 240.h,
        width: 400.w,
        fit: BoxFit.cover,
      ),
      Positioned(
        bottom: 20.h,
        child: Container(
          alignment: Alignment.center,
          height: 250.h,
          width: 360.w,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(18)),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: SizedBox(
                  height: 80.h,
                  width: 260.w,
                  child: Text(
                    text1,
                    textAlign: TextAlign.center,
                    style: headingTheme,
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                height: 80.h,
                width: 270.w,
                child: Text(text2,
                    textAlign: TextAlign.center,
                    style: headingTheme.copyWith(
                        fontSize: 16.sp,
                        color: const Color(0xff000000).withOpacity(0.5))),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
