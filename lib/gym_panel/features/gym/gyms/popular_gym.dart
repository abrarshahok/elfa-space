import '../gym_info/gym_info_page.dart';
import '/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularGym extends StatelessWidget {
  final gymInfo = const [
    {
      'image': MyImages.manImage,
      'title': 'Muscle Mania',
      'rating': '4.9',
      'location': 'Autobahn Road, Sindh, Hyderabad',
      'distance': '3.5km/50 Min',
    },
    {
      'image': MyImages.womenImage,
      'title': 'Yoga Station',
      'rating': '4.9',
      'location': 'Unit No.06, Latifabad, Hyderabad',
      'distance': '2 km/15 Min',
    },
    {
      'image': MyImages.manImage,
      'title': 'Muscle Mania',
      'rating': '4.9',
      'location': 'Autobahn Road, Sindh, Hyderabad',
      'distance': '3.5km/50 Min',
    },
    {
      'image': MyImages.womenImage,
      'title': 'Yoga Station',
      'rating': '4.9',
      'location': 'Unit No.06, Latifabad, Hyderabad',
      'distance': '2 km/15 Min',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.36,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 23, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular GYM',
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
              scrollDirection: Axis.horizontal,
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
        Expanded(
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
      width: 190,
      height: 225,
      margin: const EdgeInsets.only(left: 17, bottom: 7, top: 5),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
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
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 182,
            height: 135,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(GymInfoPage.routeName);
                  },
                  child: SizedBox(
                    width: 182,
                    height: 135,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 5,
                          child: Container(
                            width: 182,
                            height: 135,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage(image),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 10,
                          right: 10,
                          child: Icon(
                            Icons.favorite_border,
                            size: 23,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 182,
                            height: 135,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: const Alignment(-0.00, 1.00),
                                end: const Alignment(0, -1),
                                colors: [
                                  Colors.black,
                                  Colors.black.withOpacity(0)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 7,
              right: 11,
              left: 7,
              bottom: 7,
            ),
            padding: const EdgeInsets.only(
              bottom: 6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                customRow(
                  textLabel: location,
                  icon: Icons.location_on,
                ),
                const SizedBox(height: 8),
                customRow(
                  textLabel: distance,
                  icon: Icons.directions_walk,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
