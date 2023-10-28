import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/../../constants/constants.dart';

class Reels extends StatelessWidget {
  const Reels({super.key});
  final postInfo = const [
    {
      'name': 'Claire Dangais',
      'username': 'ClaireD15',
      'post_image': MyImages.baseImage,
    },
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
      itemBuilder: (ctx, index) => Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 402,
                  child: ClipRRect(
                    child: Image.asset(
                      postInfo[index]['post_image'] as String,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Row(
                    children: [
                      Container(
                        width: 53,
                        height: 53,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage(MyImages.claire),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                postInfo[index]['name'] as String,
                                style: GoogleFonts.plusJakartaSans(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '@${postInfo[index]['username']}',
                            style: GoogleFonts.plusJakartaSans(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  top: 20,
                  right: 20,
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 10),
                      const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 28,
                      ),
                      const SizedBox(height: 10),
                      Image.asset(
                        MyIcons.chatIcon1,
                        color: Colors.white,
                        height: 28,
                        width: 28,
                      ),
                      const SizedBox(height: 10),
                      Transform.flip(
                        flipX: true,
                        child: Image.asset(
                          MyIcons.sendIcon1,
                          color: Colors.white,
                          height: 28,
                          width: 28,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Image.asset(
                        MyIcons.savedIcon1,
                        color: Colors.white,
                        height: 28,
                        width: 28,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
