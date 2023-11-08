import 'package:elfa_main_dashboard/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiffLoginButton extends StatelessWidget {
  final int heightt;
  final int widthh;
  final String image;
  final String text;
  final VoidCallback ontap;
  const DiffLoginButton({
    super.key,
    required this.text,
    required this.ontap,
    required this.heightt,
    required this.widthh,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: heightt.sp,
        width: widthh.sp,
        decoration: BoxDecoration(
          color: const Color(0xD8D9D9D9),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: ListTile(
          leading: SizedBox(
            height: 30,
            width: 30,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
          title: Text(
            text,
            style: MyFonts.getPoppin(
              color: const Color(0xFF6C6B6B),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
