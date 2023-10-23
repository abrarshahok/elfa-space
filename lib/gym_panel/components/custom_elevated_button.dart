import 'package:flutter/material.dart';

import '../../constants/constants.dart';



class CustomElevetedButton extends StatelessWidget {
  final Color backgroundColor;
  final Color labelColor;
  final String label;
  final Function() onPressed;

  const CustomElevetedButton({
    required this.label,
    required this.labelColor,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        fixedSize: const Size(169, 49),
        elevation: 0,
      ),
      child: Text(
        label,
        style: MyFonts.getPoppin(
          color: labelColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
