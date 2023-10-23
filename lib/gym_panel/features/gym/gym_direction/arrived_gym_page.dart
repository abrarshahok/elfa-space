
import 'package:flutter/material.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/custom_bottom_app_bar.dart';
import '/constants/constants.dart';

class ArrivedGymPage extends StatelessWidget {
  static const routeName = '/arrived-gym';
  const ArrivedGymPage({super.key});

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
                    'You Have Arrived',
                    textAlign: TextAlign.center,
                    style: MyFonts.getPoppin(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'You have arrived at your GYM location',
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
      bottomNavigationBar: CustomBottomAppBar(
        onPressed: () {},
        label: 'Arrived',
      ),
    );
  }
}
