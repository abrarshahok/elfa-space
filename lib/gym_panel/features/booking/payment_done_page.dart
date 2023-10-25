import 'package:flutter/material.dart';

import '../../gym_screen/gym_screen.dart';
import '/constants/constants.dart';
import '../../components/custom_app_bar.dart';

class PaymentDonePage extends StatelessWidget {
  static const routeName = '/payment-done';
  const PaymentDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            const CustomAppBar(title: ''),
            const SizedBox(height: 30),
            const SizedBox(height: 90),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: Colors.purple,
                    size: 143,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Congratulations!',
                    textAlign: TextAlign.center,
                    style: MyFonts.getPoppin(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Your Booking is Successfully Done.\nYou can check your booking on the menu Profile',
                    textAlign: TextAlign.center,
                    style: MyFonts.getPoppin(
                      color: const Color(0x993C3C43),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: 390,
        height: 144,
        padding: const EdgeInsets.all(20),
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
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                maximumSize: const Size(348, 49),
                minimumSize: const Size(348, 49),
                fixedSize: const Size(348, 49),
                backgroundColor: const Color(0xFF9916AE),
              ),
              child: Text(
                'View E-Reciept',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Go To Home',
                style: MyFonts.getPoppin(
                  color: const Color(0xFF6639A6),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
