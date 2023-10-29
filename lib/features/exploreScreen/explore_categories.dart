import 'package:elfa_main_dashboard/gym_panel/gym_screen/gym_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screen_toggler.dart';
import '../work_spaces/presentation/pages/work_space.dart';

class ExploreCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> gridtileData = [
      {
        "text": "workspaces",
        "image": "assets/splashAssets/carsouelAssets/slide1.png",
        "route": WorkSpace.routeName,
        'toggle': "",
      },
      {
        "text": "     Schools",
        "image": "assets/splashAssets/carsouelAssets/slide2.png",
        "route": WorkSpace.routeName,
        'toggle': Screens.schoolPanel,
      },
      {
        "text": "   Local Food ",
        "image": "assets/splashAssets/carsouelAssets/slide3.png",
        "route": WorkSpace.routeName,
        'toggle': Screens.foodPanel,
      },
      {
        "text": "       Gyms",
        "image": "assets/splashAssets/carsouelAssets/slide4.jpeg",
        "route": GymScreen.routeName,
        'toggle': Screens.gymPanel,
      },
      {
        "text": "      Salons ",
        "image": "assets/splashAssets/carsouelAssets/slide5.png",
        "route": WorkSpace.routeName,
        'toggle': "",
      },
      {
        "text": "Marriage Halls",
        "image": "assets/splashAssets/carsouelAssets/slide6.png",
        "route": WorkSpace.routeName,
        'toggle': "",
      },
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Find best places near you!',
              style: GoogleFonts.chelseaMarket(
                color: const Color(0xFFB509D0),
                fontSize: 20,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.28,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 2.2 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  maxCrossAxisExtent: 200,
                ),
                itemCount: gridtileData.length,
                itemBuilder: (_, index) {
                  return moduleTile(
                      image: gridtileData[index]['image'] as String,
                      text: gridtileData[index]['text'] as String,
                      ontap: () {
                        if (gridtileData[index]['toggle'] != "") {
                          Provider.of<ScreenToggler>(context, listen: false)
                              .toggle(gridtileData[index]['toggle']);
                        } else {
                          Navigator.of(context)
                              .pushNamed(gridtileData[index]['route']);
                        }
                      });
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector moduleTile({
    required String image,
    required String text,
    required VoidCallback ontap,
  }) {
    return GestureDetector(
      onTap: ontap,
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 200.h,
            width: 200.w,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              left: 30,
              bottom: 0,
              child: Text(
                text,
                style: headingTheme.copyWith(
                    color: kBackgroundColor, fontSize: 18.sp),
              ))
        ],
      ),
    );
  }
}
