import '/features/exploreScreen/explore_categories.dart';
import '/food_panel/home/food_panel_home.dart';
import '/gym_panel/gym_screen/gym_screen.dart';
import '/school_panel/schools/schools_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen_toggler.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

Widget getScreens(Screens screen) {
  if (screen == Screens.gymPanel) {
    return GymScreen();
  } else if (screen == Screens.schoolPanel) {
    return const SchoolsScreen();
  } else if (screen == Screens.foodPanel) {
    return const FoodPanelHome();
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
