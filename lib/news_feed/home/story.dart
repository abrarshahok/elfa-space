import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/../../constants/constants.dart';

class Story extends StatelessWidget {
  const Story({
    required this.isMe,
    required this.profile,
  });
  final bool isMe;
  final Map<String, String> profile;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70.66,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70.66,
                height: 70.66,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 70.66,
                        height: 70.66,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(
                            side: BorderSide(
                              width: 2.02,
                              color: Color(0xFFB30ACE),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 5.05,
                      top: 5.05,
                      child: Container(
                        width: 60.57,
                        height: 60.57,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(profile['image']!),
                            fit: BoxFit.fill,
                          ),
                          shape: const OvalBorder(),
                        ),
                      ),
                    ),
                    if (isMe)
                      Positioned(
                        left: 25,
                        top: 30,
                        child: Image.asset(MyIcons.plusIcon),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: double.infinity,
                height: 20.19,
                padding: const EdgeInsets.only(
                  left: 5.05,
                  right: 4.61,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${profile['name']}',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 13.12,
                        fontWeight: FontWeight.w600,
                        height: 0.13,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 20.19),
      ],
    );
  }
}
