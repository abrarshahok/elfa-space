import 'package:elfa_main_dashboard/marriage_hall_panel/components/nearest_hall_container.dart';
import 'package:elfa_main_dashboard/marriage_hall_panel/screens/marriage_hall_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../components/featured_hall_container.dart';
import '/features/exploreScreen/screen_toggler.dart';
import '../../constants/constants.dart';

class MarriageHallScreen extends StatelessWidget {
  const MarriageHallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
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
              'Marriage Halls Near By',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: const Color(0xD1920AB4),
                fontSize: 20,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 26,
                  color: Colors.purple,
                ),
                Text(
                  'Latifabad, Hyderabad',
                  textAlign: TextAlign.center,
                  style: MyFonts.getPoppin(
                    color: const Color(0xFFB30ACE),
                    fontSize: 6,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 15),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 380,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 290,
                height: 50,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 25,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 20),
                    Image.asset(
                      MyIcons.searchIcon,
                      color: Colors.purple,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          label: Text(
                            'Search Marriage Halls',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFBBB5BC),
                              letterSpacing: -0.28,
                            ),
                          ),
                        ),
                        onTapOutside: (_) =>
                            FocusManager.instance.primaryFocus!.unfocus(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 40,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFFB509D0), Color(0xFF8D1B9F)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
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
                child: Image.asset(MyIcons.filterIcon),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Featured Halls',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 3; i++)
                        FeaturedHallContainer(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(MarriageHallDetailScreen.routeName);
                          },
                        ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Text(
                        'Halls Near You',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'View all',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFB20ACD),
                            fontSize: 13,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: 4,
                  (context, index) => NearestHallContainer(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(MarriageHallDetailScreen.routeName);
                    },
                  ),
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
            ],
          ),
        ),
      ],
    );
  }
}
