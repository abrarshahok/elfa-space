import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'live/live_videos.dart';
import 'posts/all_posts.dart';
import 'reels/reels.dart';

class VideosDashboard extends StatelessWidget {
  const VideosDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Colors.purple,
            dividerColor: Colors.grey[200],
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: false,
            labelColor: Colors.purple,
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: MyFonts.getPoppin(
              color: const Color(0xFF9C9C9C),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            labelStyle: MyFonts.getPoppin(
              color: Colors.purple,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            tabs: const [
              Tab(text: 'Posts'),
              Tab(text: 'Reels'),
              Tab(text: 'Live'),
            ],
          ),
          const Expanded(
            child: TabBarView(
              children: [
                AllPosts(),
                Reels(),
                LiveVideos(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
