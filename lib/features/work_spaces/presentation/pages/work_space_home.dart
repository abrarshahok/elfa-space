import 'package:elfa_main_dashboard/constants.dart';
import 'package:elfa_main_dashboard/features/work_spaces/presentation/widgets/space_tiles.dart';
import 'package:elfa_main_dashboard/features/work_spaces/presentation/widgets/utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
            child: Row(
              children: [
                RoundedPicture(50, 50),
                const SizedBox(width: 8),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User's Name",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Hi! Where do you want to go?"),
                  ],
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
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 40,
            child: Center(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search Space",
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Row with "Categories" text and filter icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle filter icon tap
                  },
                  child: const Icon(Icons.filter_list),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          TabBar(
            isScrollable: true,
            indicatorWeight: 0,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kPrimaryColor,
            ),
            indicatorColor: Colors.black,
            unselectedLabelStyle: const TextStyle(
              color: Colors.black,
            ),
            labelStyle: const TextStyle(
              color: Colors.white,
            ),
            unselectedLabelColor: Colors.black,
            labelPadding: const EdgeInsets.symmetric(horizontal: 30),
            tabs: const [
              Tab(text: "All"),
              Tab(text: "Cafe"),
              Tab(text: "Co-Space"),
              Tab(text: "Private"),
              Tab(text: "Hot-Desk"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(
            child: TabBarView(
              children: [
                SpaceTiles(category: "All"),
                SpaceTiles(category: "Cafe"),
                SpaceTiles(category: "Co-Space"),
                SpaceTiles(category: "Private"),
                SpaceTiles(category: "Hot-Desk"),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
