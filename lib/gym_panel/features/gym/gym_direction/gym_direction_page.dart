import 'package:flutter/material.dart';
import '/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'get_direction_page.dart';

class GymDirectionPage extends StatelessWidget {
  static const routeName = '/gym-direction';
  const GymDirectionPage({super.key});

  Widget circle({
    required double height,
    required double width,
    required Color color,
  }) {
    return Opacity(
      opacity: 0.80,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.purple),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(250),
            topRight: Radius.circular(80),
            bottomLeft: Radius.circular(200),
            bottomRight: Radius.circular(200),
          ),
        ),
      ),
    );
  }

  Widget locationCircle() {
    return Container(
      width: 26,
      height: 26,
      decoration: ShapeDecoration(
        color: const Color(0xFF9916AE),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(30),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x7F5B9EE1),
            blurRadius: 24,
            offset: Offset(0, 10),
            spreadRadius: 0,
          )
        ],
      ),
      child: const Icon(
        Icons.location_on,
        color: Colors.white,
        size: 15,
      ),
    );
  }

  Widget customButton({
    IconData? icon,
    String? assetIcon,
    required String label,
    required Color color,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (assetIcon != null)
          Image.asset(
            assetIcon,
            color: color,
          ),
        if (icon != null)
          Icon(
            icon,
            color: color,
          ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: MyFonts.getPoppin(
            color: color,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MyImages.mapImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Row(
              children: [
                Container(
                  width: 295,
                  height: 43,
                  margin: const EdgeInsets.only(left: 30),
                  decoration: ShapeDecoration(
                    color: const Color(0x269916AE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Image.asset(MyIcons.searchIcon),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 40,
                  height: 38,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF9916AE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Image.asset(
                    MyIcons.filterIcon,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Stack(
              children: [
                circle(
                  height: 274,
                  width: 277,
                  color: const Color(0xFFB040C2).withOpacity(0.25),
                ),
                Positioned(
                  bottom: 80,
                  left: 50,
                  child: locationCircle(),
                ),
                Positioned(
                  bottom: 40,
                  right: 110,
                  child: locationCircle(),
                ),
                Positioned(
                  top: 70,
                  right: 100,
                  child: locationCircle(),
                ),
                Positioned(
                  top: 115,
                  right: 40,
                  child: locationCircle(),
                ),
                Positioned(
                  bottom: 50,
                  right: 35,
                  child: Container(
                    width: 41,
                    height: 41,
                    padding: const EdgeInsets.only(bottom: 4, right: 10),
                    decoration: const ShapeDecoration(
                      color: Color(0xFF9916AE),
                      shape: OvalBorder(),
                    ),
                    child: Transform.rotate(
                      angle: 30,
                      child: Image.asset(MyIcons.compass),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int i = 0; i < 3; i++)
                    const _GymInfoContainer(
                      gymName: 'Muscle Mania',
                      image: MyImages.gymImage,
                      ratings: 4.9,
                      location: 'G8503 Autobhan Road, Hydeabad',
                      distance: '3.5km/50 Min',
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: 390,
        height: 94,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customButton(
              label: 'Home',
              color: const Color(0xFF616161),
              assetIcon: MyIcons.home,
            ),
            customButton(
              label: 'Explore',
              color: const Color(0xFF9916AE),
              icon: Icons.explore_outlined,
            ),
            customButton(
              label: 'Cart',
              color: const Color(0xFF616161),
              icon: Icons.shopping_cart_outlined,
            ),
            customButton(
              label: 'Favourite',
              color: const Color(0xFF616161),
              icon: Icons.favorite_border_outlined,
            ),
            customButton(
              label: 'Account',
              color: const Color(0xFF616161),
              icon: Icons.account_circle_rounded,
            ),
          ],
        ),
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
            style: GoogleFonts.poppins(
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
      width: 303,
      height: 261,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Stack(
              children: [
                Image.asset(
                  MyImages.gymImage,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    width: 39,
                    height: 39,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.49000000953674316),
                      shape: const OvalBorder(),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      size: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Row(
              children: [
                Text(
                  gymName,
                  style: MyFonts.getPoppin(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(GetDirectionPage.routeName);
                  },
                  child: Container(
                    width: 41,
                    height: 41,
                    padding: const EdgeInsets.only(bottom: 7, right: 5),
                    decoration: const ShapeDecoration(
                      color: Color(0xFF9916AE),
                      shape: OvalBorder(),
                    ),
                    child: Transform.rotate(
                      angle: 270,
                      child: Image.asset(MyIcons.compass),
                    ),
                  ),
                ),
              ],
            ),
          ),
          customRow(
            textLabel: location,
            icon: Icons.location_on,
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const SizedBox(width: 10),
              Text(
                '5.0',
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 10),
              for (int i = 0; i < 5; i++)
                Container(
                  width: 15,
                  height: 16,
                  margin: const EdgeInsets.only(right: 7),
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
              Text(
                ' (365 reviews)',
                style: MyFonts.getPoppin(
                  color: const Color(0x993C3C43),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Divider(thickness: 1),
          customRow(
            textLabel: distance,
            icon: Icons.directions_walk,
          ),
        ],
      ),
    );
  }
}
