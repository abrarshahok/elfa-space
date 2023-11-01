import 'package:elfa_main_dashboard/constants/constants.dart';
import 'package:flutter/material.dart';

class CartItemContainer extends StatelessWidget {
  final String itemName;
  final String itemImage;
  final double price;

  const CartItemContainer({
    required this.itemName,
    required this.itemImage,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Total: $price PKR',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 115,
              height: 80,
              decoration: ShapeDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(itemImage),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFB30ACE),
                        shape: OvalBorder(),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '1',
                        style: MyFonts.getPoppin(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
