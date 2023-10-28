import 'package:flutter/material.dart';

import '../../../components/custom_elevated_button.dart';
import '../../booking/booking_page.dart';
import '/constants/constants.dart';
import 'about_gym.dart';
import 'gallery.dart';
import 'reviews.dart';
import 'trainer_info.dart';

class GymInfoPage extends StatelessWidget {
  const GymInfoPage({super.key});
  static const routeName = '/gym-info';

  Widget customContainer(IconData icon) {
    return Container(
      width: 44,
      height: 44,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(MyImages.gymImage),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: customContainer(Icons.arrow_back_ios_new),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 20,
                    child: customContainer(Icons.favorite_border_outlined),
                  ),
                  Positioned(
                    top: 30,
                    right: 80,
                    child: customContainer(Icons.share),
                  ),
                ],
              ),
              const SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 53,
                    height: 26,
                    margin: const EdgeInsets.only(left: 19),
                    decoration: ShapeDecoration(
                      color: const Color(0x269916AE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'GYM',
                      textAlign: TextAlign.center,
                      style: MyFonts.getPoppin(
                        color: const Color(0xFF9916AE),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
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
                    '4.9 (365 reviews)',
                    style: MyFonts.getPoppin(
                      color: const Color(0x993C3C43),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Muscle Mania',
                      style: MyFonts.getPoppin(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '1012 Ocean Avenue, New York, USA',
                      style: MyFonts.getPoppin(
                        color: const Color(0x993C3C43),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: Colors.purple,
                        unselectedLabelColor: Colors.black,
                        dividerColor: Colors.grey[200],
                        labelColor: Colors.purple,
                        indicatorSize: TabBarIndicatorSize.label,
                        isScrollable: false,
                        unselectedLabelStyle: MyFonts.getPoppin(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        labelStyle: MyFonts.getPoppin(
                          color: Colors.purple,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        tabs: const [
                          Tab(text: 'About'),
                          Tab(text: 'Trainer'),
                          Tab(text: 'Gallery'),
                          Tab(text: 'Review'),
                        ],
                      ),
                      const Expanded(
                        child: TabBarView(
                          children: [
                            AboutGym(),
                            TrainerInfo(),
                            Gallery(),
                            Reviews(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
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
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Total Price\n',
                    style: MyFonts.getPoppin(
                      color: Color(0x993C3C43),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'Rs 2000',
                    style: MyFonts.getPoppin(
                      color: Color(0xFF9916AE),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: '\\month',
                    style: MyFonts.getPoppin(
                      color: const Color(0x993C3C43),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            CustomElevetedButton(
              label: 'Book Now',
              labelColor: Colors.white,
              backgroundColor: const Color(0xFF9916AE),
              onPressed: () {
                Navigator.of(context).pushNamed(BookingPage.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
