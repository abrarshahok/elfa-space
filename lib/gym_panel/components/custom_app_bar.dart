import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 41,
          height: 41,
          decoration: ShapeDecoration(
            shape: OvalBorder(
              side: BorderSide(
                width: 1,
                color: Colors.black.withOpacity(0.12999999523162842),
              ),
            ),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        const SizedBox(width: 20),
        Text(
          title,
          textAlign: TextAlign.center,
          style: MyFonts.getPoppin(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
