import 'package:flutter/material.dart';
import '/news_feed/influencers/influencers_nearby.dart';
import '/news_feed/influencers/top_influencers.dart';
import '../../constants/constants.dart';
import '/news_feed/influencers/trending_influencers.dart';

class Influencers extends StatelessWidget {
  Influencers({super.key});

  final trendingInfluencers = [
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.influencer1,
    },
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.influencer2,
    },
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.influencer3,
    },
  ];
  final topInfluencers = [
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.influencer4,
    },
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.influencer5,
    },
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.influencer2,
    },
  ];
  final nearbyInfluencers = [
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.influencer3,
    },
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.influencer4,
    },
    {
      'user_image': MyImages.claire,
      'name': 'Claire Dongais',
      'user_name': '@clairedongais',
      'image': MyImages.influencer5,
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
                    profileList: trendingInfluencers,
                  ),
                  const SizedBox(height: 10),
                  TopInfluencers(
                    profileList: topInfluencers,
                  ),
                  const SizedBox(height: 10),
                  InfluencersNearby(
                    profileList: nearbyInfluencers,
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
