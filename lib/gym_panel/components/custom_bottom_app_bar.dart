import 'package:flutter/material.dart';

import '../../constants/constants.dart';



class CustomBottomAppBar extends StatelessWidget {
  final Function() onPressed;
  final String label;
  const CustomBottomAppBar({
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 94,
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.07000000029802322),
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          maximumSize: const Size(348, 49),
          minimumSize: const Size(348, 49),
          fixedSize: const Size(348, 49),
          backgroundColor: const Color(0xFF9916AE),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: MyFonts.getPoppin(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
