import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    required this.onTap,
    required this.label,
  });

  final VoidCallback onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 40,
      decoration: ShapeDecoration(
        color: const Color(0xD1920AB4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style:const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
