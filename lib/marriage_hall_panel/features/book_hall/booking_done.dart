import 'package:elfa_main_dashboard/constants/constants.dart';
import 'package:elfa_main_dashboard/food_panel/components/custom_rounded_button.dart';
import 'package:flutter/material.dart';

class BookingDonePage extends StatelessWidget {
  static const routeName = '/booking-done';
  const BookingDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Booking has been\n',
                    style: MyFonts.getPoppin(
                      color: Colors.black,
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: 'confirmed!',
                    style: MyFonts.getPoppin(
                      color: Colors.purple,
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Icon(
              Icons.done,
              size: 80,
              color: Colors.purple,
            ),
            const SizedBox(height: 60),
            CustomRoundedButton(onTap: () {}, label: 'Home'),
          ],
        ),
      ),
    );
  }
}
