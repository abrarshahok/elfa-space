import 'package:flutter/material.dart';
import '../../components/custom_app_bar.dart';
import 'booking_info_page.dart';
import '/constants/constants.dart';
import '../../components/custom_bottom_app_bar.dart';

class SelectTrainerPage extends StatefulWidget {
  static const routeName = '/select-trainer';
  const SelectTrainerPage({super.key});

  @override
  State<SelectTrainerPage> createState() => _SelectTrainerPageState();
}

class _SelectTrainerPageState extends State<SelectTrainerPage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 60),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomAppBar(title: 'Select Trainer'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (ctx, index) => GestureDetector(
                onTap: () => setState(() => selectedIndex = index),
                child: _TrainerCard(
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomAppBar(
        label: 'Submit',
        onPressed: () {
          Navigator.of(context).pushNamed(BookingInfoPage.routeName);
        },
      ),
    );
  }
}

class _TrainerCard extends StatelessWidget {
  const _TrainerCard({this.isSelected = false});
  final bool isSelected;
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
      height: 140,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: isSelected ? 1 : 0.10,
            color: Colors.black.withOpacity(0.25),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: [
          BoxShadow(
            color: const Color(0x19000000),
            blurRadius: 10,
            offset: const Offset(0, 0),
            spreadRadius: isSelected ? 1 : 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 4),
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
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.favorite,
                        color: Color(0xFF9916AE),
                        size: 23,
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
                        const SizedBox(width: 10),
                        Text(
                          '4.8',
                          style: MyFonts.getPoppin(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 10),
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
                        const SizedBox(width: 10),
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
        ],
      ),
    );
  }
}
