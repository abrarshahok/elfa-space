import '/food_panel/screens/groceries/groceries.dart';
import '/food_panel/screens/bakeries/bakeries.dart';
import '/food_panel/screens/dairy_shops/dairy_shops.dart';
import '/food_panel/screens/local_food_shops/local_food_shops.dart';
import '/food_panel/screens/meat_shops/meat_shops.dart';
import '/constants/constants.dart';
import '../screens/chicken_shops/chicken_shops.dart';
import '../../features/exploreScreen/screen_toggler.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodPanelHome extends StatelessWidget {
  static const routeName = '/food-panel-home';
  const FoodPanelHome({super.key});

  final shopList = const [
    {
      'title': 'Local Food Shops',
      'image': MyImages.food1,
      'route': LocalFoodShops.routeName,
    },
    {
      'title': 'Grocery Stores near you',
      'image': MyImages.food2,
      'route': Groceries.routeName,
    },
    {
      'title': 'Bakeries near you',
      'image': MyImages.food3,
      'route': Bakeries.routeName,
    },
    {
      'title': 'Dairy near you',
      'image': MyImages.food4,
      'route': DairyShops.routeName,
    },
    {
      'title': 'Chicken shops near you',
      'image': MyImages.food5,
      'route': ChickenShops.routeName,
    },
    {
      'title': 'Meat shops near you',
      'image': MyImages.food6,
      'route': MeatShops.routeName,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 15),
            InkWell(
              onTap: () {
                Provider.of<ScreenToggler>(context, listen: false)
                    .toggle(Screens.exploreScreen);
              },
              child: Container(
                width: 24,
                height: 25,
                alignment: Alignment.center,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFFB509D0), Color(0xFF8D1B9F)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x198D1B9F),
                      blurRadius: 25,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 27),
            Text(
              'Food Near By',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: const Color(0xD1920AB4),
                fontSize: 23,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const Spacer(),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: shopList.length,
            itemBuilder: (ctx, index) => _FoodContainer(
              image: shopList[index]['image'] as String,
              title: shopList[index]['title'] as String,
              onTap: () {
                Navigator.of(context)
                    .pushNamed(shopList[index]['route'] as String);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _FoodContainer extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;

  const _FoodContainer({
    required this.image,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366,
      height: 96,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          Container(
            width: 54,
            height: 48,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Text(
            title,
            textAlign: TextAlign.center,
            style: MyFonts.getPoppin(
              color: const Color(0xFFB30ACE),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 45,
            height: 43,
            child: IconButton(
              color: const Color(0xFFB30ACE),
              onPressed: onTap,
              icon: Transform.flip(
                flipX: true,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
