import 'package:flutter/material.dart';

Widget RoundedPicture(double height, double width) {
  return Container(
    width: width,
    height: height,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage("assets/icons/elfaspace_logo.png"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget buildRowWithIcon(String text, IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
    child: Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 26),
        Text(
          text,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}
