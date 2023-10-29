import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../components/custom_elevated_button.dart';

class GymFilters extends StatefulWidget {
  GymFilters({super.key});
  static const routeName = '/gym-filters';

  @override
  State<GymFilters> createState() => _GymFiltersState();
}

class _GymFiltersState extends State<GymFilters> {
  Widget customContainer(String text) {
    return Container(
      constraints: const BoxConstraints(minWidth: 54),
      height: 31,
      decoration: ShapeDecoration(
        color: const Color(0x269916AE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      margin: const EdgeInsets.only(left: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: MyFonts.getPoppin(
          color: const Color(0x993C3C43),
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  final List<String> categoryList = const [
    'All',
    'Yoga',
    'GYM',
    'Running',
    'Others',
  ];

  final List<String> faciltyList = const [
    'All',
    'Car Parking',
    'Locker',
    'Air Conditioner',
  ];

  final List<String> priceList = const [
    '1000',
    '2000',
    '3000',
    '4000',
    '5000',
  ];

  final List<String> trainerGenderList = ['All', 'Male', 'Female'];

  Widget showList(String title, List<String> list) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 33),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              height: 0.06,
              letterSpacing: -0.17,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: list.map((item) => customContainer(item)).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget filledStar() {
    return Container(
      width: 27,
      height: 28,
      margin: const EdgeInsets.only(right: 15),
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

  Widget rounderBorderStar() {
    return Container(
      width: 27,
      height: 28,
      margin: const EdgeInsets.only(right: 15),
      decoration: const ShapeDecoration(
        color: Color(0x00FF9500),
        shape: StarBorder(
          side: BorderSide(width: 1, color: Color(0xFFFF9500)),
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

  Widget rating(double rating) {
    return Row(
      children: [
        const SizedBox(width: 33),
        if (rating >= 4.5)
          for (int i = 0; i < 5; i++) filledStar(),
        if (rating >= 4.0 && rating < 4.5) ...[
          for (int i = 0; i < 4; i++) filledStar(),
          for (int i = 0; i < 1; i++) rounderBorderStar(),
        ],
        if (rating >= 3.5 && rating < 4.0) ...[
          for (int i = 0; i < 3; i++) filledStar(),
          for (int i = 0; i < 2; i++) rounderBorderStar(),
        ],
        if (rating >= 3.0 && rating < 3.5) ...[
          for (int i = 0; i < 2; i++) filledStar(),
          for (int i = 0; i < 3; i++) rounderBorderStar(),
        ],
      ],
    );
  }

  RangeValues _currentRangeValues = const RangeValues(2000, 4000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Center(
              child: Text(
                'Filter',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 30),
            showList('Category', categoryList),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 33),
              child: Text(
                'Price Range',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            RangeSlider(
              values: _currentRangeValues,
              min: 1000,
              max: 5000,
              divisions: 4,
              activeColor: const Color(0xFF9916AE),
              inactiveColor: const Color(0xFFD9D9D9),
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: priceList
                  .map(
                    (price) => Text(
                      'Rs $price',
                      textAlign: TextAlign.center,
                      style: MyFonts.getPoppin(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 33),
              child: Text(
                'Rating',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                rating(5),
                Text(
                  '4.5 and above',
                  textAlign: TextAlign.center,
                  style: MyFonts.getPoppin(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                rating(4.3),
                Text(
                  '4.0 - 4.4',
                  textAlign: TextAlign.center,
                  style: MyFonts.getPoppin(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                rating(3.6),
                Text(
                  '3.5 - 3.9',
                  textAlign: TextAlign.center,
                  style: MyFonts.getPoppin(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                rating(3.0),
                Text(
                  '3.0 - 3.4',
                  textAlign: TextAlign.center,
                  style: MyFonts.getPoppin(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            showList('Facilities', faciltyList),
            const SizedBox(height: 40),
            showList('Trainer Gender', trainerGenderList),
            const SizedBox(height: 50),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
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
          children: [
            CustomElevetedButton(
              label: 'Reset Filter',
              labelColor: const Color(0xFF9916AE),
              backgroundColor: const Color(0x269916AE),
              onPressed: () {},
            ),
            CustomElevetedButton(
              label: 'Apply',
              labelColor: Colors.white,
              backgroundColor: const Color(0xFF9916AE),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
