import 'package:elfa_main_dashboard/school_panel/schools/school_info_page.dart';

import '/school_panel/componets/school_card.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class NearbySchools extends StatelessWidget {
  const NearbySchools({super.key});

  final nearbySchoolsList = const [
    {
      'name': 'School 1',
      'address': 'Latifabad, Hyderabad',
      'rating': 4.9,
      'reviews': 34,
      'image': MyImages.school2,
    },
    {
      'name': 'School 2',
      'address': 'Latifabad, Hyderabad',
      'rating': 4.9,
      'reviews': 34,
      'image': MyImages.school3,
    },
    {
      'name': 'School 3',
      'address': 'Latifabad, Hyderabad',
      'rating': 4.9,
      'reviews': 34,
      'image': MyImages.school2,
    },
    {
      'name': 'School 4',
      'address': 'Latifabad, Hyderabad',
      'rating': 4.9,
      'reviews': 34,
      'image': MyImages.school3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        mainAxisSpacing: 10,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed(SchoolInfoPage.routeName),
            child: SchoolCard(
              name: nearbySchoolsList[index]['name'] as String,
              address: nearbySchoolsList[index]['address'] as String,
              rating: nearbySchoolsList[index]['rating'] as double,
              reviews: nearbySchoolsList[index]['reviews'] as int,
              schoolImage: nearbySchoolsList[index]['image'] as String,
              cardColor: Colors.white,
            ),
          );
        },
        childCount: nearbySchoolsList.length,
      ),
    );
  }
}
