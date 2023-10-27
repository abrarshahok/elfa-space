import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../components/category.dart';
import '../components/post.dart';
import '../components/story.dart';

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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: profileList
                      .map(
                        (profile) => Story(
                          isMe: profile['name'] == 'You',
                          profile: profile,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: 390,
              height: 74,
              decoration: const BoxDecoration(color: Colors.white),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        height: 30,
                        width: 40,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [Color(0xFFB509D0), Color(0xFF8D1B9F)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x198D1B9F),
                              blurRadius: 25,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Image.asset(MyIcons.filterIcon),
                      ),
                      ...categoriesList
                          .map((category) => Category(category: category))
                          .toList(),
                    ]),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: categoriesList.length,
              (BuildContext context, int index) => const Column(
                children: [
                  SizedBox(height: 10),
                  Post(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
