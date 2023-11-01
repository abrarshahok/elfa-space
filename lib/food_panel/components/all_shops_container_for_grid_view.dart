import 'package:flutter/material.dart';

class AllShopsContainerForGridView extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;

  const AllShopsContainerForGridView({
    required this.title,
    required this.image,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: 145,
              height: 123,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 7,
                    right: 6,
                    child: Container(
                      width: 64,
                      height: 20,
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.5199999809265137),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          Container(
                            width: 5,
                            height: 5,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF10DA30),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Open',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black.withOpacity(0.8199999928474426),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          const Text(
            'Delivery/Pickup avail',
            style: TextStyle(
              color: Color(0xD1920AB4),
              fontSize: 11,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '10km away |',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.8199999928474426),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              Container(
                width: 15,
                height: 15,
                decoration: const ShapeDecoration(
                  color: Color(0xFFF9FF00),
                  shape: StarBorder(
                    points: 5,
                    innerRadiusRatio: 0.38,
                    pointRounding: 0,
                    valleyRounding: 0,
                    rotation: 0,
                    squash: 0,
                  ),
                ),
              ),
              Text(
                '4.7(2200)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.8199999928474426),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
