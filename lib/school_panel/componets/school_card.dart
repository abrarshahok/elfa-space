import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class SchoolCard extends StatelessWidget {
  final String name;
  final String schoolImage;
  final String address;
  final double rating;
  final int reviews;
  final Color cardColor;
  const SchoolCard({
    required this.name,
    required this.address,
    required this.rating,
    required this.schoolImage,
    required this.reviews,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width * 0.45,
      height: size.height * 0.31,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.00, -1.00),
          end: const Alignment(0, 1),
          colors: cardColor == Colors.purple
              ? const [Color(0xFFB409CF), Color(0xFF9119A4)]
              : [Colors.white, Colors.white],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        shadows: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 10,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 156,
            height: 135,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage(schoolImage),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            textAlign: TextAlign.center,
            style: MyFonts.getPoppin(
              color: cardColor == Colors.purple
                  ? Colors.white
                  : const Color(0xFF31302C),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: cardColor == Colors.purple
                    ? Colors.white
                    : const Color(0xFFA19A81),
                size: 20,
              ),
              Text(
                address,
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: cardColor == Colors.purple
                      ? Colors.white
                      : const Color(0xFFA19A81),
                  fontSize: 9,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Container(
                width: 14,
                height: 15,
                margin: const EdgeInsets.only(right: 5),
                decoration: const ShapeDecoration(
                  color: Color.fromRGBO(251, 196, 18, 1),
                  shape: StarBorder(
                    points: 5,
                    innerRadiusRatio: 0.38,
                    pointRounding: 0.70,
                    valleyRounding: 0,
                    rotation: 0,
                    squash: 0,
                  ),
                ),
              ),
              Text(
                '$rating',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: cardColor == Colors.purple
                      ? Colors.white
                      : const Color(0xFFA19A81),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                '($reviews reviews)',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: cardColor == Colors.purple
                      ? Colors.white
                      : const Color(0xFFA19A81),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
