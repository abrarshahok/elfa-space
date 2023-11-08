import 'package:elfa_main_dashboard/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants.dart';

class LoginInButton extends StatelessWidget {
  final int heightt;
  final int widthh;
  final Color? color;
  final String text;
  final VoidCallback ontap;
  const LoginInButton({
    super.key,
    required this.text,
    this.color,
    required this.ontap,
    required this.heightt,
    required this.widthh,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: heightt.sp,
        width: widthh.sp,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: MyFonts.getPoppin(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
