import '/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GymNearestYou extends StatelessWidget {
  final gymInfo = const [
    {
      'image': MyImages.nearGym1,
      'title': 'PowerZone GYM',
      'rating': '4.9',
      'location': 'Airport Road, Sindh, Hyderabad',
      'distance': '1.5km/8 Min',
    },
    {
      'image': MyImages.nearGym2,
      'title': 'No Limits',
      'rating': '4.9',
      'location': 'Uni no.07, Sindh, Hyderabad',
      'distance': '0.5km/3 Min',
    },
    {
      'image': MyImages.nearGym1,
      'title': 'PowerZone GYM',
      'rating': '4.9',
      'location': 'Airport Road, Sindh, Hyderabad',
      'distance': '1.5km/8 Min',
    },
    {
      'image': MyImages.nearGym2,
      'title': 'No Limits',
      'rating': '4.9',
      'location': 'Uni no.07, Sindh, Hyderabad',
      'distance': '0.5km/3 Min',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.6,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 23, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nearest to You',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: 0.18,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'See All',
                    style: GoogleFonts.atkinsonHyperlegible(
                      color: const Color(0xFFE04A4A),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: 0.15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 50),
              itemCount: gymInfo.length,
              itemBuilder: (ctx, index) => _GymInfoContainer(
                gymName: gymInfo[index]['title']!,
                image: gymInfo[index]['image']!,
                distance: gymInfo[index]['distance']!,
                location: gymInfo[index]['location']!,
                ratings: double.parse(gymInfo[index]['rating']!),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GymInfoContainer extends StatelessWidget {
  final String gymName;
  final String image;
  final double ratings;
  final String location;
  final String distance;

  const _GymInfoContainer({
    required this.gymName,
    required this.image,
    required this.ratings,
    required this.location,
    required this.distance,
  });

  Widget customRow({required String textLabel, required IconData icon}) {
    return Row(
      children: [
        const SizedBox(width: 4),
        Icon(
          icon,
          color: const Color.fromRGBO(224, 75, 75, 1),
          size: 20,
        ),
        const SizedBox(width: 5),
        SizedBox(
          width: 120,
          child: Text(
            textLabel,
            maxLines: 1,
            style: GoogleFonts.atkinsonHyperlegible(
              color: const Color(0x993C3C43),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 0,
              textStyle: const TextStyle(
                overflow: TextOverflow.ellipsis,
              ),
              letterSpacing: 0.12,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 351,
      height: 129,
      margin: const EdgeInsets.only(left: 12, bottom: 7, top: 5, right: 12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.05000000074505806),
          ),
          borderRadius: BorderRadius.circular(12),
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
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.only(left: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(image),
                ),
              ),
              const Positioned(
                top: 10,
                right: 8,
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 17,
                  margin: const EdgeInsets.only(left: 13),
                  decoration: ShapeDecoration(
                    color: const Color(0x0C9916AE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'GYM',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF9916AE),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: 0.12,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 7),
                    Text(
                      gymName,
                      style: GoogleFonts.atkinsonHyperlegible(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: 0.15,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 15,
                      height: 16,
                      decoration: const ShapeDecoration(
                        color: Color(0xA8FF9500),
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
                    const SizedBox(width: 5),
                    Text(
                      '$ratings',
                      style: GoogleFonts.atkinsonHyperlegible(
                        color: const Color(0x993C3C43),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: 0.12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                customRow(
                  textLabel: location,
                  icon: Icons.location_on,
                ),
                const SizedBox(height: 5),
                customRow(
                  textLabel: distance,
                  icon: Icons.directions_walk,
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
