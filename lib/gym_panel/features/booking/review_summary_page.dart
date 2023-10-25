import 'package:flutter/material.dart';
import '../../components/custom_app_bar.dart';
import '../../components/custom_bottom_app_bar.dart';
import '/../../constants/constants.dart';
import 'e_receipt_page.dart';

class ReviewSummaryPage extends StatelessWidget {
  static const routeName = '/review-summary';
  const ReviewSummaryPage({super.key});

  Widget customTile({
    required String title,
    required String leading,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: MyFonts.getPoppin(
            color: const Color(0x993C3C43),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          leading,
          textAlign: TextAlign.center,
          style: MyFonts.getPoppin(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  final List<Widget> divide = const [
    SizedBox(height: 20),
    Divider(thickness: 1),
    SizedBox(height: 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            const CustomAppBar(title: 'Review Summary'),
            const SizedBox(height: 30),
            const _GymInfoContainer(
              gymName: 'Muscle Mania',
              image: MyImages.gymImage,
              ratings: 4.9,
              location: 'Autobahn Road, Sindh, Hyderabad',
              price: 1000.0,
            ),
            ...divide,
            customTile(
              title: 'Booking Date',
              leading: 'October 01, 2023 | 10:00 AM',
            ),
            const SizedBox(height: 20),
            customTile(
              title: 'From',
              leading: 'October 10, 2023',
            ),
            const SizedBox(height: 20),
            customTile(
              title: 'To',
              leading: 'November 10, 2023',
            ),
            const SizedBox(height: 20),
            customTile(
              title: 'Trainer',
              leading: 'Afzal Malik',
            ),
            ...divide,
            customTile(
              title: 'Amount',
              leading: 'Rs.1000.00',
            ),
            const SizedBox(height: 20),
            customTile(
              title: 'Tax',
              leading: 'Rs.12.00',
            ),
            ...divide,
            customTile(
              title: 'Total',
              leading: 'Rs.1012.00',
            ),
            ...divide,
            Row(
              children: [
                Image.asset(
                  MyIcons.cash,
                  height: 19,
                  width: 22,
                ),
                const SizedBox(width: 10),
                Text(
                  'Cash',
                  textAlign: TextAlign.center,
                  style: MyFonts.getPoppin(
                    color: const Color(0x993C3C43),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Change',
                    textAlign: TextAlign.center,
                    style: MyFonts.getPoppin(
                      color: const Color(0xFF6639A6),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(
        onPressed: () {
          Navigator.of(context).pushNamed(ERecieptPage.routeName);
        },
        label: 'Continue',
      ),
    );
  }
}

class _GymInfoContainer extends StatelessWidget {
  final String gymName;
  final String image;
  final double ratings;
  final String location;
  final double price;

  const _GymInfoContainer({
    required this.gymName,
    required this.image,
    required this.ratings,
    required this.location,
    required this.price,
  });

  Widget customRow({required String textLabel, required IconData icon}) {
    return Row(
      children: [
        const SizedBox(width: 4),
        Icon(
          icon,
          color: Colors.purple,
          size: 20,
        ),
        const SizedBox(width: 5),
        SizedBox(
          width: 135,
          child: Text(
            textLabel,
            maxLines: 1,
            style: MyFonts.getPoppin(
              color: const Color(0x993C3C43),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 129,
      color: Colors.white,
      alignment: Alignment.topRight,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(image),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 5),
                    Container(
                      width: 40,
                      height: 17,
                      decoration: ShapeDecoration(
                        color: const Color(0x0C9916AE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'GYM',
                        style: MyFonts.getPoppin(
                          color: const Color(0xFF9916AE),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
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
                      '$ratings',
                      style: MyFonts.getPoppin(
                        color: const Color(0x993C3C43),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    gymName,
                    style: MyFonts.getPoppin(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                customRow(
                  textLabel: location,
                  icon: Icons.location_on,
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Rs $price',
                          style: MyFonts.getPoppin(
                            color: const Color(0xFF9916AE),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '/month',
                          style: MyFonts.getPoppin(
                            color: const Color(0x993C3C43),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
