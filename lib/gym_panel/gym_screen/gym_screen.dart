import 'package:elfa_main_dashboard/news_feed/news/provider/screen_toggler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants/constants.dart';
import '../../news_feed/news/provider/search_and_filter_hider.dart';
import 'gym_home_page.dart';

class GymScreen extends StatelessWidget {
  static const routeName = '/gym-screen';

  Widget topBar(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                Provider.of<SearchAndFilterHider>(context, listen: false)
                    .toggleHide();
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
              'Gyms Near By',
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
        const SizedBox(height: 30),
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
                    Image.asset(MyIcons.searchIcon),
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
                            'Search',
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
                    const Spacer(),
                    Image.asset(MyIcons.cancelIcon),
                    const SizedBox(width: 10),
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
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 20),
          topBar(context),
          const SizedBox(height: 10),
          Expanded(
            child: GymHomePage(),
          ),
        ],
      ),
    );
  }
}
