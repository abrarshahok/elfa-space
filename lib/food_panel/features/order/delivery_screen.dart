import 'package:elfa_main_dashboard/food_panel/components/custom_rounded_button.dart';
import 'package:flutter/material.dart';
import 'order_placed_screen.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  Widget customListTile({
    required IconData icon,
    required String title,
    Widget? trailing,
  }) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Icon(icon),
        const SizedBox(width: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black.withOpacity(0.8199999928474426),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        const Spacer(),
        trailing ?? Container(),
      ],
    );
  }

  Widget itemPriceRow({
    required String title,
    required double price,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.black.withOpacity(0.8199999928474426),
              fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          Text(
            '$price PKR',
            style: TextStyle(
              color: Colors.black.withOpacity(0.8199999928474426),
              fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          width: 377,
          height: 281,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customListTile(
                icon: Icons.play_circle_outlined,
                title: 'Latifabad no. 10, Hyderabad',
                trailing: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      color: Color(0xD1920AB4),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Divider(),
              customListTile(
                icon: Icons.car_rental,
                title: 'Delivery Instructions',
              ),
              const Divider(),
              customListTile(
                icon: Icons.timelapse,
                title: 'Delivery Time',
              ),
              const Divider(),
              customListTile(
                icon: Icons.mobile_friendly_rounded,
                title: 'Mobile Number',
              ),
              const Divider(),
              customListTile(
                icon: Icons.payment,
                title: 'Pay With',
              ),
              const Divider(),
              customListTile(
                icon: Icons.receipt_long,
                title: '2 Items',
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        itemPriceRow(
          title: 'Item Subtotal',
          price: 400,
        ),
        itemPriceRow(
          title: 'Service Fee',
          price: 150,
        ),
        itemPriceRow(
          title: 'Subtotal',
          price: 550,
        ),
        const Spacer(),
        CustomRoundedButton(
          label: 'Confirm Order & Pay Now',
          onTap: () {
            Navigator.of(context).pushNamed(OrderPlacedScreen.routeName);
          },
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
