import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

    return Container(
      width: size.width,
      height: size.height * 0.19,
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 34,
                width: 34,
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
              const SizedBox(width: 10),
              customContainer(
                Image.asset(
                  MyIcons.searchIcon,
                  color: Colors.purple,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 5),
              customContainer(
                Image.asset(
                  MyIcons.clipboard,
                  color: Colors.purple,
                  fit: BoxFit.fill,
                ),
              ),
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
          const SizedBox(height: 20),
          SizedBox(
            width: 358,
            height: 28,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setBottomBarIndex(0);
                  },
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      MyIcons.home,
                      fit: BoxFit.contain,
                      color: currentIndex == 0
                          ? Colors.purple
                          : const Color.fromRGBO(188, 188, 188, 1),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setBottomBarIndex(1);
                  },
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      MyIcons.placesActive,
                      color: currentIndex == 1
                          ? Colors.purple
                          : const Color.fromRGBO(188, 188, 188, 1),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setBottomBarIndex(2);
                  },
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.add_circle_outline_rounded,
                      color: currentIndex == 2
                          ? Colors.purple
                          : const Color.fromRGBO(188, 188, 188, 1),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setBottomBarIndex(3);
                  },
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      MyIcons.videosActive,
                      color: currentIndex == 3
                          ? Colors.purple
                          : const Color.fromRGBO(188, 188, 188, 1),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setBottomBarIndex(4);
                  },
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      MyIcons.peoples,
                      color: currentIndex == 4
                          ? Colors.purple
                          : const Color.fromRGBO(188, 188, 188, 1),
                    ),
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
