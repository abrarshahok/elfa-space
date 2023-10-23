
import 'package:flutter/material.dart';
import '../../components/custom_app_bar.dart';
import '../../components/custom_bottom_app_bar.dart';
import '../../components/custom_text_field.dart';
import 'select_package_page.dart';
import '/../../constants/constants.dart';

class BookingInfoPage extends StatelessWidget {
  static const routeName = '/booking-info';
  const BookingInfoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const CustomAppBar(title: 'Booking'),
              const SizedBox(height: 30),
              Text(
                'Your Information Details',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Name',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 4),
              const CustomTextField(
                width: 348,
                hintText: 'John Doe',
              ),
              const SizedBox(height: 20),
              Text(
                'Email',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 4),
              const CustomTextField(
                width: 348,
                hintText: 'johndoe@example.com',
              ),
              const SizedBox(height: 20),
              Text(
                'Gender',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 4),
              const CustomTextField(
                width: 348,
                hintText: 'Male',
              ),
              const SizedBox(height: 20),
              Text(
                'Phone',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 4),
              const CustomTextField(
                width: 348,
                hintText: '+92 | 3091122331',
              ),
              const SizedBox(height: 20),
              Text(
                'City',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 4),
              const CustomTextField(
                width: 348,
                hintText: 'Hyderabad',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(
        label: 'Submit',
        onPressed: () {
          Navigator.of(context).pushNamed(SelectPackagePage.routeName);
        },
      ),
    );
  }
}
