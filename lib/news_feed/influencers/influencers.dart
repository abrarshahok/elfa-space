import 'package:flutter/material.dart';
import '/news_feed/influencers/influencers_nearby.dart';
import '/news_feed/influencers/top_influencers.dart';
import '../../constants/constants.dart';
import '/news_feed/influencers/trending_influencers.dart';

class Influencers extends StatelessWidget {
  const Influencers({super.key});

  final profileList = const [
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.baseImage,
    },
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.baseImage,
    },
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.baseImage,
    },
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.baseImage,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 1267,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  TrendingInfluencers(
                    profileList: profileList,
                  ),
                  const SizedBox(height: 10),
                  TopInfluencers(
                    profileList: profileList,
                  ),
                  const SizedBox(height: 10),
                  InfluencersNearby(
                    profileList: profileList,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
