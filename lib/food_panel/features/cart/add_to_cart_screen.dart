import 'package:elfa_main_dashboard/food_panel/components/custom_circle_button.dart';
import 'package:elfa_main_dashboard/food_panel/features/cart/cart_screen.dart';
import 'package:flutter/material.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  int items = 0;

  @override
  Widget build(BuildContext context) {
    final routeData = ModalRoute.of(context)?.settings.arguments;
    final itemInfo = routeData as Map<String, dynamic>;
    return Container(
      width: double.infinity,
      height: 350,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemInfo['itemName'],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Price: ${itemInfo['price']} PKR',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
              const Spacer(),
              Container(
                width: 115,
                height: 80,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(itemInfo['itemImage']),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
            width: 404,
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFFEEEEEE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${itemInfo['itemName']}',
                      style: const TextStyle(
                        color: Color(0xFF1D1919),
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Text(
                      'Price: ${itemInfo['price']} Rs',
                      style: const TextStyle(
                        color: Color(0xFF1D1919),
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    CustomCircleButton(
                      icon: Icons.add,
                      onTap: () {
                        setState(() => items++);
                      },
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '$items',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF1F1F1F),
                        fontSize: 25,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 10),
                    CustomCircleButton(
                      icon: Icons.remove,
                      onTap: () {
                        if (items <= 0) return;
                        setState(() => items--);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Total: 000Rs',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: 0.06,
              letterSpacing: -0.41,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 406,
            height: 60.62,
            decoration: ShapeDecoration(
              color: const Color(0xFFB30ACE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  CartScreen.routeName,
                  arguments: itemInfo,
                );
              },
              child: const Text(
                'Add to Cart',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
