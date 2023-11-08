import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class FeaturedHallContainer extends StatelessWidget {
  const FeaturedHallContainer({required this.onTap});
  final VoidCallback onTap;
  Widget customContainer({
    required IconData icon,
    required Widget infoWidget,
  }) {
    return Container(
      width: 80,
      height: 26,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.75),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Colors.white),
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Row(
        children: [
          Icon(icon, size: 15),
          const SizedBox(width: 5),
          infoWidget,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 264,
        height: 139.63,
        margin: const EdgeInsets.only(left: 20),
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage(MyImages.hall1),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 5,
              child: customContainer(
                icon: Icons.star,
                infoWidget: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '4',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Kulim Park',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '(32)',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Kulim Park',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: customContainer(
                icon: Icons.location_on_outlined,
                infoWidget: const Text(
                  '5 KM',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Kulim Park',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
