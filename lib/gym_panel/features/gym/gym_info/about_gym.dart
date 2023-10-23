import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../gym_direction/gym_direction_page.dart';
import '/constants/constants.dart';

class AboutGym extends StatelessWidget {
  const AboutGym({super.key});

  Widget customContainer({
    required double height,
    required double width,
    required IconData icon,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: const ShapeDecoration(
        color: Color(0x269916AE),
        shape: OvalBorder(),
      ),
      child: Icon(
        icon,
        color: Colors.purple,
      ),
    );
  }

  Widget showFaciltity({
    required IconData icon,
    required String title,
  }) {
    return Column(
      children: [
        customContainer(
          height: 53,
          width: 53,
          icon: icon,
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 75,
          child: Text(
            title,
            style: MyFonts.getPoppin(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'A modern, well-equipped gym designed to help  you achieve  your fitness goals with state-of-the-art  exercise equipment and expert trainers. Our gym  offers a motivating  environment for ',
                    style: MyFonts.getPoppin(
                      color: const Color(0x993C3C43),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'Read More',
                    style: MyFonts.getPoppin(
                      color: const Color(0xFF9916AE),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'GYM Owner',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.15,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(MyImages.john),
                ),
                const SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'John Doe ',
                      style: MyFonts.getPoppin(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'GYM Owner',
                      style: MyFonts.getPoppin(
                        color: const Color(0x993C3C43),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                customContainer(
                  height: 40,
                  width: 40,
                  icon: Icons.call,
                ),
                const SizedBox(width: 10),
                customContainer(
                  height: 40,
                  width: 40,
                  icon: Icons.message,
                ),
                const SizedBox(width: 30),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Facilities',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.15,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                showFaciltity(
                  icon: Icons.car_rental_outlined,
                  title: 'Car Parking',
                ),
                showFaciltity(
                  icon: Icons.meeting_room_outlined,
                  title: 'Change Room',
                ),
                showFaciltity(
                  icon: Icons.lock,
                  title: 'Locker',
                ),
                showFaciltity(
                  icon: Icons.shower_rounded,
                  title: 'Shower',
                ),
                const SizedBox(width: 5),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                showFaciltity(
                  icon: Icons.wifi,
                  title: 'Wifi',
                ),
                showFaciltity(
                  icon: Icons.child_friendly_outlined,
                  title: 'Childcare area',
                ),
                showFaciltity(
                  icon: Icons.local_drink_rounded,
                  title: 'Juice Bar',
                ),
                showFaciltity(
                  icon: Icons.access_time_filled_sharp,
                  title: 'Sunday Opened',
                ),
                const SizedBox(width: 0),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Address',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.15,
              ),
            ),
            const Divider(),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Color.fromRGBO(224, 75, 75, 1),
                ),
                const SizedBox(width: 10),
                Text(
                  '1012 Ocean Avenue, New York, USA',
                  style: MyFonts.getPoppin(
                    color: const Color(0x993C3C43),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(GymDirectionPage.routeName);
              },
              child: Container(
                width: double.infinity,
                height: 201,
                margin: const EdgeInsets.only(right: 18),
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage(MyImages.map),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Icon(
                  Icons.location_on,
                  size: 50,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
