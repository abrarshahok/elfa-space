import 'package:elfa_main_dashboard/news_feed/app/app_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '/features/exploreScreen/explore_screen.dart';
import '../../constants/constants.dart';
import '../influencers/influencers.dart';
import '../videos/videos_dashboard.dart';
import '../home/main_dashboard.dart';

class NewsScreen extends StatelessWidget {
  static const routeName = '/news-screen';

  const NewsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const AppTopBar(),
          Expanded(
            child: DefaultTabController(
              length: 5,
              initialIndex: 0,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: Colors.white,
                    dividerColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: false,
                    unselectedLabelStyle: MyFonts.getPoppin(
                      color: const Color.fromRGBO(188, 188, 188, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    labelStyle: MyFonts.getPoppin(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    tabs: const [
                      Tab(
                        icon: Icon(LineIcons.home),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.explore_outlined,
                        ),
                      ),
                      Tab(
                        icon: Icon(Icons.add_circle_outline),
                      ),
                      Tab(
                        icon: Icon(Icons.personal_video_sharp),
                      ),
                      Tab(
                        icon: Icon(Icons.people_outline),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        MainDashboard(),
                        const ExploreScreen(),
                        const Center(child: Text('No Page!')),
                        const VideosDashboard(),
                        Influencers(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
