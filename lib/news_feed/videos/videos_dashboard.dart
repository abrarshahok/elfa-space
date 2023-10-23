import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'live/live_videos.dart';
import 'posts/all_posts.dart';
import 'reels/reels.dart';

class VideosDashboard extends StatefulWidget {
  VideosDashboard({super.key});

  @override
  State<VideosDashboard> createState() => _VideosDashboardState();
}

class _VideosDashboardState extends State<VideosDashboard> {
  setIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  final _pages = [
    AllPosts(),
    Reels(),
    LiveVideos(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1267,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Container(
            width: 358,
            height: 28,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 1),
                TextButton(
                  onPressed: () => setIndex(0),
                  child: Text(
                    'Posts',
                    style: GoogleFonts.poppins(
                      color: currentIndex == 0
                          ? Colors.purple
                          : const Color(0xFF9C9C9C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 0.07,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => setIndex(1),
                  child: Text(
                    'Reels',
                    style: GoogleFonts.poppins(
                      color: currentIndex == 1
                          ? Colors.purple
                          : const Color(0xFF9C9C9C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 0.07,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => setIndex(2),
                  child: Text(
                    'Live',
                    style: GoogleFonts.poppins(
                      color: currentIndex == 2
                          ? Colors.purple
                          : const Color(0xFF9C9C9C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 0.07,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: _pages[currentIndex],
          ),
        ],
      ),
    );
  }
}
