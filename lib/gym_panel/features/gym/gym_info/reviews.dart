import 'package:flutter/material.dart';
import '/../../constants/constants.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  Widget customContainer({
    required Widget child,
    required Color backgroundColor,
  }) {
    return Container(
      height: 31,
      margin: const EdgeInsets.only(left: 22),
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      alignment: Alignment.center,
      child: child,
    );
  }

  String reviewText = 'Latest';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Reviews ',
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
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Color(0xFF9916AE),
                  ),
                  label: Text(
                    'add review',
                    style: MyFonts.getPoppin(
                      color: const Color(0xFF9916AE),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Container(
              width: 377,
              height: 48,
              margin: const EdgeInsets.only(left: 22, right: 22),
              decoration: ShapeDecoration(
                color: const Color(0x143C3C43),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Image.asset(
                    MyIcons.searchIcon,
                    color: const Color(0xFF9916AE),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Search in reviews',
                        hintStyle: MyFonts.getPoppin(
                          color: const Color(0x993C3C43),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              customContainer(
                backgroundColor: const Color(0x269916AE),
                child: Row(
                  children: [
                    Image.asset(
                      MyIcons.filterIcon,
                      color: Colors.purple,
                      height: 15,
                      width: 15,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Filters',
                      textAlign: TextAlign.center,
                      style: MyFonts.getPoppin(
                        color: const Color(0xFF3C3C43),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Transform.flip(
                      flipY: true,
                      child: Container(
                        width: 11,
                        height: 8,
                        decoration: const ShapeDecoration(
                          color: Color(0x993C3C43),
                          shape: StarBorder.polygon(sides: 3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              customContainer(
                backgroundColor: reviewText == 'Latest'
                    ? const Color(0xFF9916AE)
                    : const Color(0x269916AE),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      reviewText = 'Latest';
                    });
                  },
                  child: Text(
                    'Latest',
                    style: MyFonts.getPoppin(
                      color: reviewText == 'Latest'
                          ? Colors.white
                          : const Color(0xFF9916AE),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              customContainer(
                backgroundColor: reviewText == 'With Photos'
                    ? const Color(0xFF9916AE)
                    : const Color(0x269916AE),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      reviewText = 'With Photos';
                    });
                  },
                  child: Text(
                    'With Photos',
                    textAlign: TextAlign.center,
                    style: MyFonts.getPoppin(
                      color: reviewText == 'With Photos'
                          ? Colors.white
                          : const Color(0xFF9916AE),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Divider(),
          const SizedBox(height: 5),
          ReviewWithoutPhotos(),
          const SizedBox(height: 5),
          const Divider(),
          const SizedBox(height: 5),
          ReviewWithPhotos(),
        ],
      ),
    );
  }
}

class ReviewWithoutPhotos extends StatelessWidget {
  Widget star() {
    return Container(
      width: 14,
      height: 15,
      margin: const EdgeInsets.only(right: 5),
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(MyImages.john),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    'Kashif Ahmed',
                    style: MyFonts.getPoppin(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '1 months ago',
                    style: MyFonts.getPoppin(
                      color: const Color(0x993C3C43),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4, top: 5),
                child: Text(
                  'Great  gym  with  top-notch  equipment  and  friendly  staff, perfect  for  achieving  your  fitness  goals.',
                  style: MyFonts.getPoppin(
                    color: const Color(0x993C3C43),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(width: 22),
            for (int i = 0; i < 5; i++) star(),
            Text(
              '4.8',
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ReviewWithPhotos extends StatelessWidget {
  Widget star() {
    return Container(
      width: 14,
      height: 15,
      margin: const EdgeInsets.only(right: 5),
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(MyImages.gymMan),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    'Ali Khan',
                    style: MyFonts.getPoppin(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '1 months ago',
                    style: MyFonts.getPoppin(
                      color: const Color(0x993C3C43),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4, top: 5),
                child: Text(
                  'Clean  and  well-maintained  gym  facility  that  offers  a  variety  of  workout  options  for  all  fitness  levels.',
                  style: MyFonts.getPoppin(
                    color: const Color(0x993C3C43),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(width: 22),
            for (int i = 0; i < 5; i++) star(),
            Text(
              '5.0',
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 22),
              for (int i = 0; i < 2; i++)
                Container(
                  width: 180,
                  height: 160,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(MyImages.nearGym2),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
