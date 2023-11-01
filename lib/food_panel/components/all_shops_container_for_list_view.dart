import 'package:flutter/material.dart';

class AllShopsContainerForListView extends StatelessWidget {
  final String title;
  final String image;
  final String address;
  final VoidCallback onTap;

  const AllShopsContainerForListView({
    required this.title,
    required this.image,
    required this.address,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: 383,
              height: 191,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 12,
                    right: 13,
                    child: Container(
                      width: 93,
                      height: 33,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
              fontSize: 24,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(height: 9),
          Text(
            address,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black.withOpacity(0.8199999928474426),
              fontSize: 17,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              for (int i = 0; i < 5; i++)
                Container(
                  width: 16,
                  height: 15,
                  margin: const EdgeInsets.only(left: 5),
                  decoration: const ShapeDecoration(
                    shape: StarBorder(
                      side: BorderSide(width: 1),
                      points: 5,
                      innerRadiusRatio: 0.38,
                      pointRounding: 0,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
