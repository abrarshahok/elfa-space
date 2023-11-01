import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '/food_panel/features/order/pickup_screen.dart';
import '/food_panel/features/order/delivery_screen.dart';
import '../../../gym_panel/components/custom_app_bar.dart';

class OrderScreen extends StatefulWidget {
  static const routeName = '/order-screen';
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int currentIndex = 0;

  final _pages = const [
    DeliveryScreen(),
    PickupScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            const CustomAppBar(title: 'Your Order'),
            const SizedBox(height: 30),
            Row(
              children: [
                Container(
                  width: 170,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: currentIndex == 0
                        ? const Color(0xD1920AB4)
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () => setState(() => currentIndex = 0),
                    child: Text(
                      'Delivery',
                      style: MyFonts.getPoppin(
                        color: currentIndex == 0 ? Colors.white : Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 170,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: currentIndex == 1
                        ? const Color(0xD1920AB4)
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () => setState(() => currentIndex = 1),
                    child: Text(
                      'Pickup',
                      style: MyFonts.getPoppin(
                        color: currentIndex == 1 ? Colors.white : Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(child: _pages[currentIndex]),
          ],
        ),
      ),
    );
  }
}
