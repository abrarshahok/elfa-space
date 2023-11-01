import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  const CustomCircleButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: const ShapeDecoration(
          color: Color(0xFFB30ACE),
          shape: CircleBorder(),
        ),
        child: Icon(icon, size: 20, color: Colors.white),
      ),
    );
  }
}
