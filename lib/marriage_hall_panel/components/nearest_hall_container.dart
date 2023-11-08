import 'package:elfa_main_dashboard/constants/constants.dart';
import 'package:flutter/material.dart';

class NearestHallContainer extends StatelessWidget {
  final VoidCallback onTap;

  const NearestHallContainer({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage(MyImages.hall2),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            begin: const Alignment(0.00, -1.00),
            end: const Alignment(0, 1),
            colors: [Colors.black.withOpacity(0), Colors.black],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 140,
              height: 44,
              decoration: ShapeDecoration(
                color: const Color(0xD6B30ACE), // Purple background
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Royal Palace',
                    textAlign: TextAlign.center,
                    style: MyFonts.getPoppin(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 15,
                        color: Colors.white,
                      ),
                      Text(
                        'Autobhan Road,Hyderabad',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xF2F7E4E4),
                          fontSize: 8,
                          fontFamily: 'Kulim Park',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
