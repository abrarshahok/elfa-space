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
              color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            leading: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
            title: Text(text,
                style: TextStyle(color: Colors.grey[700], fontSize: 15.sp)),
          )),
    );
  }
}
