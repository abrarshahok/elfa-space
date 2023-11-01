import 'package:flutter/material.dart';
import '/food_panel/features/order/track_order_screen.dart';
import '../../components/custom_rounded_button.dart';

class OrderPlacedScreen extends StatelessWidget {
  static const routeName = '/order-placed-screen';
  const OrderPlacedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Icon(
              Icons.verified_rounded,
              color: Colors.purple,
              size: 135,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 279,
            child: Text(
              'Your order has been placed successfully',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.8199999928474426),
                fontSize: 23,
                fontStyle: FontStyle.italic,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 364,
            child: Text(
              'Your item has been placed and is on its way to being process',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.8199999928474426),
                fontSize: 23,
                fontStyle: FontStyle.italic,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w200,
                height: 0,
              ),
            ),
          ),
          const SizedBox(height: 30),
          CustomRoundedButton(
            label: 'Track Order',
            onTap: () {
              Navigator.of(context).pushNamed(TrackOrderScreen.routeName);
            },
          ),
          const SizedBox(height: 30),
          CustomRoundedButton(
            label: 'Back to Home',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
