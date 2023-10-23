import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/../../constants/constants.dart';
import '../../home/post.dart';

class AllPosts extends StatelessWidget {
  const AllPosts({super.key});

  final postInfo = const [
    {
      'name': 'Jemma Rey',
      'user_name': '@jemmarey',
      'post': MyImages.post1,
      'posted': '19 hours ago',
      'description':
          '''Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint commodi repudiandae.!''',
      'user_image': MyImages.jemmaRey,
    },
    {
      'name': 'Eric Rey',
      'user_name': '@ericrey',
      'post': MyImages.post2,
      'posted': '19 hours ago',
      'description':
          '''Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint commodi repudiandae.!''',
      'user_image': MyImages.ericRey,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postInfo.length,
      itemBuilder: (ctx, index) => const Column(
        children: [
          SizedBox(height: 10),
          Post(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
