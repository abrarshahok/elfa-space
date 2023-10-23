import 'package:elfa_main_dashboard/constants.dart';
import 'package:elfa_main_dashboard/features/work_spaces/presentation/widgets/utils.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Handle back icon tap
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                const Spacer(),
                const Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 35),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: GestureDetector(
                    onTap: () {
                      // Handle edit icon tap
                    },
                    child: const Icon(
                      Icons.edit_note,
                      size: 35,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundedPicture(80, 80),
                    const SizedBox(height: 10),
                    const Text(
                      "Muzammil Iftikhar",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "muzamiliftikhar999@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          buildRowWithIcon("Bookings", Icons.calendar_today),
          buildRowWithIcon("Payment History", Icons.payment),
          buildRowWithIcon("Settings", Icons.settings),
          buildRowWithIcon("Logout", Icons.exit_to_app),
        ],
      ),
    );
  }
}
