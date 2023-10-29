import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/constants.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({super.key});

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
      height: size.height * 0.13,
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              ZoomDrawer.of(context)!.toggle();
            },
            child: Container(
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
          ),
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
    );
  }
}
