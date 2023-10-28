import 'package:flutter/material.dart';
import '/../../constants/constants.dart';
import '../../components/post.dart';

class AllPosts extends StatelessWidget {
  const AllPosts({super.key});

  final postInfo = const [
    {
      'name': 'Claire Dangais',
      'username': 'ClaireD15',
      'post_image': MyImages.postImage1,
    },
    {
      'name': 'Claire Dangais',
      'username': 'ClaireD15',
      'post_image': MyImages.postImage2,
    },
    {
      'name': 'Claire Dangais',
      'username': 'ClaireD15',
      'post_image': MyImages.postImage3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postInfo.length,
      itemBuilder: (ctx, index) => Column(
        children: [
          const SizedBox(height: 10),
          Post(
            name: postInfo[index]['name'] as String,
            userName: postInfo[index]['username'] as String,
            postImage: postInfo[index]['post_image'] as String,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
