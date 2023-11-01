import 'package:flutter/material.dart';

class ShopItemContainer extends StatelessWidget {
  final String itemName;
  final String itemImage;
  final double price;
  final VoidCallback onTap;
  const ShopItemContainer({
    required this.itemName,
    required this.itemImage,
    required this.price,
    required this.onTap,
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
                  'Price: $price PKR',
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
                    right: 10,
                    child: InkWell(
                      onTap: onTap,
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFB30ACE),
                          shape: OvalBorder(),
                        ),
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
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
