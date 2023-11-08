import '../features/gym/gyms/gym_nearest_you.dart';
import '../features/gym/gyms/popular_gym.dart';
import 'package:flutter/material.dart';

class GymHomePage extends StatelessWidget {
  static const routeName = '/gym-home-page';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PopularGym(),
          GymNearestYou(),
        ],
      ),
    );
  }
}
