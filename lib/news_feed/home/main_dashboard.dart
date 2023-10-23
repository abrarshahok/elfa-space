import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import 'category.dart';
import 'post.dart';
import 'story.dart';

class MainDashboard extends StatelessWidget {
  final profileList = const [
    {
      'name': 'You',
      'image': MyImages.you,
    },
    {
      'name': 'Benjamin',
      'image': MyImages.benjamin,
    },
    {
      'name': 'Farita',
      'image': MyImages.farita,
    },
    {
      'name': 'Marie',
      'image': MyImages.marie,
    },
    {
      'name': 'Claire',
      'image': MyImages.claire,
    }
  ];
  final categoriesList = const [
    'All',
    'Food',
    'Saloons',
    'Gyms',
    'Schools',
    'Workspaces',
    'Others',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: 868,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: profileList
                    .map(
                      (profile) => Story(
                        isMe: profile['name']!.contains('You'),
                        profile: profile,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 390,
            height: 74,
            decoration: const BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: categoriesList
                    .map((category) => Category(category: category))
                    .toList(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 120),
              itemCount: 3,
              itemBuilder: (ctx, index) => const Column(
                children: [
                  Post(),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
