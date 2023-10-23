import 'package:elfa_main_dashboard/news_feed/news/provider/search_and_filter_hider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../constants/constants.dart';

class NewsTopBar extends StatefulWidget {
  final Function(int newIndex) changeIndex;
  NewsTopBar({required this.changeIndex});
  @override
  _NewsTopBarState createState() => _NewsTopBarState();
}

class _NewsTopBarState extends State<NewsTopBar> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
      widget.changeIndex(
        currentIndex,
      );
    });
  }

  Widget customContainer(Widget child) {
    return Container(
      width: 42,
      height: 42,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
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
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    bool isHidden = Provider.of<SearchAndFilterHider>(context).isHidden;
    return Container(
      width: size.width,
      height: isHidden ? 250 : 170,
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.only(left: 16.5, right: 16.5),
      child: Column(
        children: [
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (currentIndex == 0 || currentIndex == 1) ...[
                Container(
                  width: 30,
                  height: 30,
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
                  child: Transform.flip(
                    flipX: true,
                    child: Image.asset(
                      MyIcons.menuIcon1,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 45,
                  height: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(MyIcons.infinity),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ] else
                Text(
                  'Elfaspace',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.chelseaMarket(
                    color: const Color(0xFFB509D0),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.28,
                  ),
                ),
              const SizedBox(width: 5),
              Container(
                width: (currentIndex == 0 || currentIndex == 1) ? 149 : 160,
                height: 35,
                alignment: Alignment.center,
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
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Stack(
                        children: [
                          Image.asset(MyIcons.mapPinIcon),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          label: FittedBox(
                            child: Text(
                              'Current location',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFBBB5BC),
                                letterSpacing: -0.28,
                              ),
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
              if (currentIndex == 0 || currentIndex == 1) ...[
                const SizedBox(width: 5),
                customContainer(
                  Image.asset(
                    MyIcons.clipboard,
                    color: Colors.purple,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
              const SizedBox(width: 5),
              customContainer(
                Image.asset(
                  MyIcons.bellIcon,
                  color: Colors.purple,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 5),
              customContainer(
                Image.asset(
                  MyIcons.sendIcon1,
                  color: Colors.purple,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          if (isHidden) ...[
            const SizedBox(height: 30),
            SizedBox(
              width: size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 312,
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
          const SizedBox(height: 30),
          Container(
            width: 358,
            height: 28,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => setBottomBarIndex(0),
                  child: Image.asset(
                    MyIcons.home,
                    color: currentIndex == 0
                        ? Colors.purple
                        : const Color.fromRGBO(188, 188, 188, 1),
                  ),
                ),
                InkWell(
                  onTap: () => setBottomBarIndex(1),
                  child: Image.asset(
                    MyIcons.placesActive,
                    color: currentIndex == 1
                        ? Colors.purple
                        : const Color.fromRGBO(188, 188, 188, 1),
                  ),
                ),
                InkWell(
                  onTap: () => setBottomBarIndex(2),
                  child: Icon(
                    Icons.add_circle_outline_rounded,
                    color: currentIndex == 2
                        ? Colors.purple
                        : const Color.fromRGBO(188, 188, 188, 1),
                  ),
                ),
                InkWell(
                  onTap: () => setBottomBarIndex(3),
                  child: Image.asset(
                    MyIcons.videosActive,
                    color: currentIndex == 3
                        ? Colors.purple
                        : const Color.fromRGBO(188, 188, 188, 1),
                  ),
                ),
                InkWell(
                  onTap: () => setBottomBarIndex(4),
                  child: Image.asset(
                    MyIcons.peoples,
                    color: currentIndex == 4
                        ? Colors.purple
                        : const Color.fromRGBO(188, 188, 188, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
