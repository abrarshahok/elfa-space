import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  const Category({required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 26,
      margin: const EdgeInsets.all(12),
      alignment: Alignment.center,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFFF8F8F8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        category,
        style: GoogleFonts.poppins(
          color: const Color(0xFF888888),
          fontSize: 13.12,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.41,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
