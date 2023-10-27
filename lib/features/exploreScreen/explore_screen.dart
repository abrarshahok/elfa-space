import 'package:elfa_main_dashboard/features/exploreScreen/explore_categories.dart';
import 'package:elfa_main_dashboard/gym_panel/gym_screen/gym_screen.dart';
import 'package:elfa_main_dashboard/school_panel/schools/schools_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../news_feed/news/provider/screen_toggler.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

Widget getScreens(Screens screen) {
  if (screen == Screens.gyms) {
    return GymScreen();
  } else if (screen == Screens.schools) {
    return const SchoolsScreen();
  } else {
    return ExploreCategories();
  }
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    Screens currentScreen = Provider.of<ScreenToggler>(context).currentScreen;
    return Scaffold(
      body: getScreens(currentScreen),
    );
  }
}
