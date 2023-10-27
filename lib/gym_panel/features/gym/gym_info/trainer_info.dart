import 'package:flutter/material.dart';
import '/../../constants/constants.dart';

class TrainerInfo extends StatelessWidget {
  const TrainerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Specialist ',
                  style: MyFonts.getPoppin(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: '(12)',
                  style: MyFonts.getPoppin(
                    color: const Color(0xFF9916AE),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (ctx, index) => _TrainerCard(),
            ),
          ),
        ],
      ),
    );
  }
}

class _TrainerCard extends StatelessWidget {
  Widget star() {
    return Container(
      width: 14,
      height: 15,
      margin: const EdgeInsets.only(left: 7),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 180,
      margin: const EdgeInsets.only(right: 10, bottom: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.10,
            color: Colors.black.withOpacity(0.25),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 10,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 95,
                height: 107,
                margin: const EdgeInsets.only(left: 13, top: 10),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(MyImages.gymMan),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 160,
                        height: 23,
                        margin: const EdgeInsets.only(top: 13, left: 13),
                        decoration: ShapeDecoration(
                          color: const Color(0x269916AE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.verified,
                              color: Color(0xFF9916AE),
                              size: 15,
                            ),
                            Text(
                              'Professional Trainer',
                              style: MyFonts.getPoppin(
                                color: const Color(0xFF9916AE),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Color(0xFF9916AE),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Text(
                      'Afzal Malik',
                      style: MyFonts.getPoppin(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Text(
                      'Trainer',
                      style: MyFonts.getPoppin(
                        color: const Color(0x993C3C43),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (int i = 0; i < 5; i++) star(),
                        const SizedBox(width: 5),
                        Text(
                          '4.8',
                          style: MyFonts.getPoppin(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          height: 15,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.black
                                    .withOpacity(0.20999999344348907),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '39 reviews',
                          style: MyFonts.getPoppin(
                            color: Colors.black.withOpacity(0.4399999976158142),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(314, 38),
                backgroundColor: const Color(0x269916AE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0,
              ),
              child: Text(
                'Make Appointment',
                style: MyFonts.getPoppin(
                  color: Colors.purple,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
