
import 'package:flutter/material.dart';

import '../../../components/custom_app_bar.dart';
import '/../../constants/constants.dart';
import 'add_card.dart';

enum Payment { cash, card, easypaisa, jazzcash }

class PaymentMethods extends StatefulWidget {
  static const routeName = '/payment-method';
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  Payment _selectedValue = Payment.card;
  void onValueChanged(Payment newValue) {
    setState(() {
      _selectedValue = newValue;
    });
  }

  Widget cardAndCashContainer({
    bool isSelected = false,
    required Widget child,
  }) {
    return Container(
      width: 350,
      height: 46,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.10000000149011612),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: const Color(0xFF6639A6),
            blurRadius: isSelected ? 4 : 0,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: child,
    );
  }

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
            const CustomAppBar(title: 'Payment Methods'),
            const SizedBox(height: 30),
            Text(
              'Cash',
              textAlign: TextAlign.center,
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            cardAndCashContainer(
              isSelected: _selectedValue == Payment.cash,
              child: CustomRadioButton(
                title: 'Cash',
                iconLocation: MyIcons.cash,
                iconHeight: 18,
                iconWidth: 22,
                value: Payment.cash,
                selectedValue: _selectedValue,
                onValueChanged: onValueChanged,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Credit & Debit Card',
              textAlign: TextAlign.center,
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            cardAndCashContainer(
              isSelected: _selectedValue == Payment.card,
              child: CustomRadioButton(
                title: 'Add new card',
                iconLocation: MyIcons.card,
                iconHeight: 23,
                iconWidth: 23,
                value: Payment.card,
                selectedValue: _selectedValue,
                onValueChanged: onValueChanged,
                onPressed: () {
                  Navigator.of(context).pushNamed(AddCard.routeName);
                },
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'More Payment Methods',
              textAlign: TextAlign.center,
              style: MyFonts.getPoppin(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 350,
              height: 120,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.10000000149011612),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: const Color(0xFF6639A6),
                    blurRadius: (_selectedValue == Payment.easypaisa ||
                            _selectedValue == Payment.jazzcash)
                        ? 4
                        : 0,
                    offset: const Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  CustomRadioButton(
                    title: 'Easypaisa',
                    iconWidth: 26,
                    iconHeight: 26,
                    iconLocation: MyIcons.easypaisa,
                    value: Payment.easypaisa,
                    selectedValue: _selectedValue,
                    onValueChanged: onValueChanged,
                    onPressed: () {},
                  ),
                  const Divider(),
                  CustomRadioButton(
                    title: 'JazzCash',
                    iconWidth: 43,
                    iconHeight: 21,
                    space: 12,
                    iconLocation: MyIcons.jazzcash,
                    value: Payment.jazzcash,
                    selectedValue: _selectedValue,
                    onValueChanged: onValueChanged,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  final String title;
  final Payment value;
  final double space;
  final Payment selectedValue;
  final String? iconLocation;
  final double? iconHeight;
  final double? iconWidth;
  final Function(Payment) onValueChanged;
  final Function() onPressed;

  const CustomRadioButton({
    required this.title,
    required this.value,
    required this.selectedValue,
    required this.onValueChanged,
    required this.onPressed,
    required this.iconHeight,
    required this.iconWidth,
    required this.iconLocation,
    this.space = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        Container(
          width: iconWidth,
          height: iconHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(iconLocation!),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(width: space),
        TextButton(
          onPressed: onPressed,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: MyFonts.getPoppin(
              color: const Color(0x993C3C43),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Spacer(),
        Radio(
          value: value,
          groupValue: selectedValue,
          activeColor: Colors.purple,
          hoverColor: Colors.purple,
          focusColor: Colors.purple,
          onChanged: (value) {
            onValueChanged(value!);
          },
        ),
      ],
    );
  }
}
