import 'package:flutter/material.dart';
import '/school_panel/componets/school_card.dart';
import '../../constants/constants.dart';
import 'school_info_page.dart';

class NearbyTuitions extends StatelessWidget {
  const NearbyTuitions({super.key});

  final nearbyTuitionsList = const [
    {
      'name': 'Tuition 1',
      'address': 'Z Block Y Town Faisalabad',
      'rating': 4.9,
      'reviews': 34,
      'image': MyImages.school2,
    },
    {
      'name': 'Tuition 2',
      'address': 'Z Block Y Town Faisalabad',
      'rating': 4.9,
      'reviews': 34,
      'image': MyImages.school3,
    },
    {
      'name': 'Tuition 3',
      'address': 'Z Block Y Town Faisalabad',
      'rating': 4.9,
      'reviews': 34,
      'image': MyImages.school2,
    },
    {
      'name': 'Tuition 4',
      'address': 'Z Block Y Town Faisalabad',
      'rating': 4.9,
      'reviews': 34,
      'image': MyImages.school3,
    }
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
            onTap: () => Navigator.of(context).pushNamed(SchoolInfoPage.routeName),
            child: SchoolCard(
              name: nearbyTuitionsList[index]['name'] as String,
              address: nearbyTuitionsList[index]['address'] as String,
              rating: nearbyTuitionsList[index]['rating'] as double,
              reviews: nearbyTuitionsList[index]['reviews'] as int,
              schoolImage: nearbyTuitionsList[index]['image'] as String,
              cardColor: Colors.white,
            ),
          );
        },
        childCount: nearbyTuitionsList.length,
      ),
    );
  }
}
