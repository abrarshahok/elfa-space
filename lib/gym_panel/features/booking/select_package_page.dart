import 'package:flutter/material.dart';
import '../../components/custom_app_bar.dart';
import '../../components/custom_bottom_app_bar.dart';
import 'payment_methods/payment_methods.dart';
import '/../../constants/constants.dart';

class SelectPackagePage extends StatefulWidget {
  static const routeName = '/select-package';
  const SelectPackagePage({super.key});

  @override
  State<SelectPackagePage> createState() => _SelectPackagePageState();
}

class _SelectPackagePageState extends State<SelectPackagePage> {
  final _packageInfo = const [
    {
      'package': 'Monthly Package',
      'fees': 1000.0,
      'hours': 1,
      'for': 'Men\'s',
    },
    {
      'package': 'Monthly Package',
      'fees': 1200.0,
      'hours': 1,
      'for': 'Women\'s',
    },
    {
      'package': '6 Month Package',
      'fees': 5999.0,
      'hours': 1,
      'for': 'Men\'s',
    },
    {
      'package': '6 Month Package',
      'fees': 6499.0,
      'hours': 1,
      'for': 'Women\'s',
    },
    {
      'package': '1 Year Package',
      'fees': 9999.0,
      'hours': 1,
      'for': 'Men\'s',
    },
    {
      'package': '1 Year Package',
      'fees': 10999.0,
      'hours': 1,
      'for': 'Women\'s',
    },
  ];

  void onChangedValue(int value) {
    setState(() {
      selectedValue = value;
    });
  }

  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            const CustomAppBar(title: 'Select Package'),
            const SizedBox(height: 30),
            Text(
              'Your Duration',
              textAlign: TextAlign.center,
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 18),
            Container(
              width: 350,
              height: 46,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.10000000149011612),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 20),
                  const Icon(
                    Icons.timer,
                    size: 35,
                    color: Colors.purple,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '1 Hour',
                    textAlign: TextAlign.center,
                    style: MyFonts.getPoppin(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Transform.rotate(
                    angle: 1.55,
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.purple,
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Select Package',
              textAlign: TextAlign.center,
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                ),
                itemCount: _packageInfo.length,
                itemBuilder: (ctx, index) => _PackageCard(
                  value: index,
                  selectedValue: selectedValue,
                  package: _packageInfo[index]['package'] as String,
                  fees: _packageInfo[index]['fees'] as double,
                  hours: _packageInfo[index]['hours'] as int,
                  forWhoom: _packageInfo[index]['for'] as String,
                  onChangedValue: onChangedValue,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(
        label: 'Subscribe',
        onPressed: () {
          Navigator.of(context).pushNamed(PaymentMethods.routeName);
        },
      ),
    );
  }
}

class _PackageCard extends StatelessWidget {
  final String package;
  final double fees;
  final int hours;
  final String forWhoom;
  final int selectedValue;
  final int value;
  final Function(int value) onChangedValue;
  const _PackageCard({
    required this.package,
    required this.fees,
    required this.hours,
    required this.forWhoom,
    required this.selectedValue,
    required this.value,
    required this.onChangedValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 132,
          height: 122.42,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.10,
                color: Colors.black.withOpacity(0.25),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: [
              BoxShadow(
                color: (value == selectedValue)
                    ? const Color(0xFF6639A6)
                    : const Color(0x19000000),
                blurRadius: 10,
                offset: const Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            children: [
              Container(
                width: 132,
                height: 35.13,
                decoration: const ShapeDecoration(
                  color: Color(0xFF9916AE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  package,
                  textAlign: TextAlign.center,
                  style: MyFonts.getPoppin(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Rs $fees/-',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '/$hours Hour\n(for $forWhoom)',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: const Color(0x993C3C43),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Radio(
            value: value,
            groupValue: selectedValue,
            activeColor: Colors.purple,
            hoverColor: Colors.purple,
            focusColor: Colors.purple,
            onChanged: (value) {
              onChangedValue(value!);
            },
          ),
        ),
      ],
    );
  }
}
