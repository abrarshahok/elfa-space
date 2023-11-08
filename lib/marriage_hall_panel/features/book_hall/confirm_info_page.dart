import 'package:elfa_main_dashboard/marriage_hall_panel/features/book_hall/booking_done.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class ConfirmInfoPage extends StatelessWidget {
  static const routeName = '/confirm-info-page';

  final RichText constDate = RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: '3rd',
          style: MyFonts.getPoppin(
            color: const Color(0xFFB20ACD),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: ' September - ',
          style: MyFonts.getPoppin(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: '5pm',
          style: MyFonts.getPoppin(
            color: const Color(0xFFB20ACD),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: ' to ',
          style: MyFonts.getPoppin(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: '8pm',
          style: MyFonts.getPoppin(
            color: const Color(0xFFB20ACD),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );

  Widget customTile({required String title, required String subtitle}) {
    return ListTile(
      title: Text(
        title,
        style: MyFonts.getPoppin(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: MyFonts.getPoppin(
          color: const Color(0xFFB20ACD),
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Confirm your information',
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Personal Information',
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              customTile(title: 'Full Name', subtitle: 'Abrar Ahmed'),
              customTile(title: 'Phone Number', subtitle: '+92 310-3877376'),
              customTile(title: 'CNIC Number', subtitle: '12345-1234567-8'),
              const SizedBox(height: 20),
              Text(
                'Venue Information',
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              customTile(title: 'Venue', subtitle: 'Venue Name'),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date & Time',
                      style: MyFonts.getPoppin(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    constDate,
                    const SizedBox(height: 8),
                    constDate,
                    const SizedBox(height: 8),
                    constDate,
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Cost',
                          style: MyFonts.getPoppin(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '450K PKR',
                          style: MyFonts.getPoppin(
                            color: Colors.purple,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.file_download_outlined,
                color: Colors.purple,
                size: 24,
              ),
            ),
            Container(
              width: 103,
              height: 40,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFFB20ACD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x7FB20ACD),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(BookingDonePage.routeName);
                },
                child: Text(
                  'Confirm',
                  style: MyFonts.getPoppin(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
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
