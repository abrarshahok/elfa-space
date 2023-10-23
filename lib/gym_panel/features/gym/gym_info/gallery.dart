import 'package:flutter/material.dart';

import '/../../constants/constants.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Gallery ',
                      style: MyFonts.getPoppin(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: '(12)',
                      style: MyFonts.getPoppin(
                        color: const Color(0xFF9916AE),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_a_photo_outlined,
                  color: Color(0xFF9916AE),
                ),
                label: Text(
                  'add photo',
                  style: MyFonts.getPoppin(
                    color: const Color(0xFF9916AE),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 15,
                mainAxisSpacing: 25,
              ),
              padding: const EdgeInsets.only(right: 30, left: 10),
              itemCount: 6,
              itemBuilder: (ctx, index) => Container(
                width: 190,
                height: 170,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(MyImages.nearGym2),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
