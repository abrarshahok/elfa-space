import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/profile.dart';

class TopInfluencers extends StatelessWidget {
  const TopInfluencers({required this.profileList});

  final List<Map<String, String>> profileList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Influencers',
                style: GoogleFonts.alata(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.28,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFFA6A6A6),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 0.07,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: profileList
                  .map((profile) => Profile(profile: profile))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
