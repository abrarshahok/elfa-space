import 'package:elfa_main_dashboard/constants/constants.dart';
import 'package:elfa_main_dashboard/school_panel/componets/school_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../news_feed/news/provider/screen_toggler.dart';
import 'school_info_page.dart';

class TopSchoolsAndTuitions extends StatelessWidget {
  const TopSchoolsAndTuitions({super.key});

  final topSchoolsList = const [
    {
      'name': 'School Name',
      'address': 'Z Block Y Town Faisalabad',
      'rating': 4.9,
      'reviews': 34,
      'image': MyImages.school1,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                    .toggle(Screens.explore);
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
              'Schools Near By',
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
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Rated Schools/Academies/Tutions ',
                style: MyFonts.getPoppin(
                  color: const Color(0xFF484848),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: 24,
                height: 26,
                padding: const EdgeInsets.only(right: 6),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFFB509D0), Color(0xFF8D1B9F)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
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
                alignment: Alignment.center,
                child: Transform.flip(
                  flipX: true,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.31,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () =>
                  Navigator.of(context).pushNamed(SchoolInfoPage.routeName),
              child: SchoolCard(
                name: topSchoolsList[0]['name'] as String,
                address: topSchoolsList[0]['address'] as String,
                rating: topSchoolsList[0]['rating'] as double,
                reviews: topSchoolsList[0]['reviews'] as int,
                schoolImage: topSchoolsList[0]['image'] as String,
                cardColor: Colors.purple,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
