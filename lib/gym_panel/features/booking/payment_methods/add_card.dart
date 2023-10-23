import 'package:flutter/material.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/custom_text_field.dart';
import '../review_summary_page.dart';
import '../../../components/custom_bottom_app_bar.dart';
import '/../../constants/constants.dart';

class AddCard extends StatefulWidget {
  static const routeName = '/add-card';
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            const CustomAppBar(title: 'Add Card'),
            const SizedBox(height: 30),
            _MyCard(),
            const SizedBox(height: 50),
            Text(
              'Card Holder Name',
              textAlign: TextAlign.center,
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 5),
            const CustomTextField(
              width: 348,
              hintText: 'John Doe',
            ),
            const SizedBox(height: 28),
            Text(
              'Card Number',
              textAlign: TextAlign.center,
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 5),
            const CustomTextField(
              width: 348,
              hintText: '4716  9627  1635  8047',
            ),
            const SizedBox(height: 28),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expiry Date',
                      textAlign: TextAlign.center,
                      style: MyFonts.getPoppin(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const CustomTextField(
                      width: 162,
                      hintText: '02/30',
                    ),
                  ],
                ),
                const SizedBox(width: 23),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV',
                      textAlign: TextAlign.center,
                      style: MyFonts.getPoppin(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const CustomTextField(
                      width: 162,
                      hintText: '000',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 28),
            Row(
              children: [
                const Icon(
                  Icons.check_circle,
                  color: Colors.purple,
                ),
                const SizedBox(width: 5),
                Text(
                  'Save Card',
                  textAlign: TextAlign.center,
                  style: MyFonts.getPoppin(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(
        onPressed: () {
          Navigator.of(context).pushNamed(ReviewSummaryPage.routeName);
        },
        label: 'Add Card',
      ),
    );
  }
}

class _MyCard extends StatelessWidget {
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
        decoration: ShapeDecoration(
          color: color,
          shape: const OvalBorder(),
        ),
      ),
    );
  }

  Widget customColumn({
    required String title,
    required String subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: MyFonts.getPoppin(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: MyFonts.getPoppin(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361,
      height: 214,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromRGBO(153, 22, 174, 1),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -30,
            right: 40,
            child: circle(
              height: 188,
              width: 188,
              color: const Color(0xFFB040C2),
            ),
          ),
          Positioned(
            top: -20,
            right: -40,
            child: circle(
              height: 170,
              width: 170,
              color: const Color(0xFFCD53E1),
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              width: 51,
              height: 17,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(MyIcons.visaCard),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '4716  9627  1635  8047',
                  textAlign: TextAlign.center,
                  style: MyFonts.getPoppin(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    customColumn(
                      title: 'Card holder name',
                      subtitle: 'Asad Kazmi',
                    ),
                    const SizedBox(width: 46),
                    customColumn(
                      title: 'Expiry date',
                      subtitle: '02/30',
                    ),
                    const SizedBox(width: 85),
                    Container(
                      width: 35,
                      height: 28,
                      decoration: ShapeDecoration(
                        color: const Color(0x33D9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Image.asset(
                        MyIcons.chip,
                        fit: BoxFit.cover,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
