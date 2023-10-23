import 'package:elfa_main_dashboard/features/exploreScreen/explore_categories.dart';
import 'package:elfa_main_dashboard/gym_panel/gym_screen/gym_screen.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int currentIndex = 0;

  void switchIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentIndex == 0
          ? ExploreCategories(switchIndex: switchIndex)
          : GymScreen(switchIndex: switchIndex),
    );
  }
}
