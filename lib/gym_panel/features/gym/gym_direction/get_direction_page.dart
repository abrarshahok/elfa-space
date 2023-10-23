import 'package:flutter/material.dart';
import '../../../components/custom_bottom_app_bar.dart';
import '/constants/constants.dart';
import '../../../components/custom_app_bar.dart';
import 'arrived_gym_page.dart';

class GetDirectionPage extends StatelessWidget {
  static const routeName = '/get-direction';
  const GetDirectionPage({super.key});

  Widget locationCircle() {
    return Transform.rotate(
      angle: 19.6,
      child: Container(
        width: 36,
        height: 36,
        padding: const EdgeInsets.all(7),
        decoration: const ShapeDecoration(
          color: Color(0xFF9916AE),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(19),
              bottomLeft: Radius.circular(19),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x7F5B9EE1),
              blurRadius: 24,
              offset: Offset(0, 10),
              spreadRadius: 0,
            )
          ],
        ),
        child: const CircleAvatar(
          radius: 10,
          backgroundImage: AssetImage(MyImages.gymImage),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MyImages.mapImage),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            const CustomAppBar(title: 'Get Direction'),
            const SizedBox(height: 90),
            Center(
              child: locationCircle(),
            ),
            Center(
              child: Container(
                height: 400,
                width: 3,
                color: Colors.purple,
              ),
            ),
            Center(
              child: Container(
                width: 41,
                height: 41,
                padding: const EdgeInsets.only(bottom: 5, right: 5),
                decoration: const ShapeDecoration(
                  color: Color(0xFF9916AE),
                  shape: OvalBorder(),
                ),
                child: Transform.rotate(
                  angle: 31,
                  child: Image.asset(MyIcons.compass),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(
        onPressed: () {
          Navigator.of(context).pushNamed(ArrivedGymPage.routeName);
        },
        label: 'Start',
      ),
    );
  }
}
