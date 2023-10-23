import 'package:elfa_main_dashboard/features/exploreScreen/explore_screen.dart';
import 'package:flutter/material.dart';
import '../influencers/influencers.dart';
import '../videos/videos_dashboard.dart';
import '../home/main_dashboard.dart';
import 'news_top_bar.dart';

class NewsScreen extends StatefulWidget {
  static const routeName = '/news-screen';
  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final _pages = [
    MainDashboard(),
    ExploreScreen(),
    const Center(child: Text('No Page!')),
    VideosDashboard(),
    const Influencers(),
  ];
  int index = 0;
  void changeIndex(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NewsTopBar(changeIndex: changeIndex),
          Expanded(
            child: _pages[index],
          ),
        ],
      ),
    );
  }
}
