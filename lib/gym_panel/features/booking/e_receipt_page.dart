import 'package:flutter/material.dart';
import '/constants/constants.dart';
import '../../components/custom_bottom_app_bar.dart';
import 'payment_done_page.dart';
import '../../components/custom_app_bar.dart';

class ERecieptPage extends StatelessWidget {
  static const routeName = '/e-reciept';
  const ERecieptPage({super.key});

  final List<Widget> divide = const [
    SizedBox(height: 20),
    Divider(thickness: 1),
    SizedBox(height: 20),
  ];

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
            const CustomAppBar(title: 'E Reciept'),
            const SizedBox(height: 30),
            Center(
              child: SizedBox(
                height: 80,
                width: double.infinity,
                child: Image.asset(
                  MyImages.barcode,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ...divide,
            customTile(
              title: 'Booking Date',
              leading: 'October 01, 2023 | 10:00 AM',
            ),
            const SizedBox(height: 20),
            customTile(
              title: 'Check In',
              leading: 'October 10, 2023',
            ),
            const SizedBox(height: 20),
            customTile(
              title: 'Duration',
              leading: '1 Hour',
            ),
            ...divide,
            customTile(
              title: 'Amount',
              leading: 'Rs.1000.00',
            ),
            const SizedBox(height: 10),
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
            customTile(
              title: 'Name',
              leading: 'Asad Kazmi',
            ),
            const SizedBox(height: 10),
            customTile(
              title: 'Phone No',
              leading: '+92 (315) 1234567',
            ),
            const SizedBox(height: 10),
            customTile(
              title: 'Transaction Id',
              leading: '#A123XYZ',
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(
        onPressed: () {
          Navigator.of(context).pushNamed(PaymentDonePage.routeName);
        },
        label: 'Download E-Reciept',
      ),
    );
  }
}
