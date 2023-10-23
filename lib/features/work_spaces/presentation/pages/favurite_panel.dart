import 'package:elfa_main_dashboard/constants.dart';
import 'package:elfa_main_dashboard/features/work_spaces/presentation/widgets/space_tiles.dart';
import 'package:flutter/material.dart';

class FavoritePlacesScreen extends StatelessWidget {
  const FavoritePlacesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header
        Padding(
          padding:
              const EdgeInsets.only(left: 8.0, right: 8.0, top: 40, bottom: 15),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  // Handle back icon tap
                },
                child: const Icon(Icons.arrow_back_ios_new_sharp),
              ),
              const Spacer(),
              const Text(
                "My Favourite Space",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  // Handle notification icon tap
                },
                child: const Icon(Icons.notifications),
              ),
            ],
          ),
        ),
        // List of Favorite Places (SpaceTiles widget)
        const Expanded(
          child: SpaceTiles(
            category: "Favorites",
          ), // You may need to adjust the category
        ),
      ],
    );
  }
}
