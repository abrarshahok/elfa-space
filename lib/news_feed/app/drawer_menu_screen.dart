import 'package:elfa_main_dashboard/features/carsouelSlide/presentation/pages/carsouel_slide.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '/constants/constants.dart';
import 'package:flutter/material.dart';

class DrawerMenuScreen extends StatelessWidget {
  const DrawerMenuScreen({super.key});

  Widget customListTile({
    required IconData icon,
    required String title,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: MyFonts.getPoppin(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  final space = const [
    SizedBox(height: 20),
    Divider(color: Colors.white, thickness: 0.5),
    SizedBox(height: 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 60),
        ListTile(
          leading: Container(
            height: 23,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                MyIcons.infinity,
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: Text(
            'ElfaSpace',
            style: MyFonts.getPoppin(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              customListTile(
                icon: Icons.account_circle_outlined,
                title: 'Profile',
              ),
              ...space,
              customListTile(
                icon: Icons.note_sharp,
                title: 'My Spaces',
              ),
              ...space,
              customListTile(
                icon: Icons.save_rounded,
                title: 'Saved',
              ),
              ...space,
              customListTile(
                icon: Icons.settings,
                title: 'Settings & Privacy',
              ),
              ...space,
              customListTile(
                icon: Icons.help_outline_rounded,
                title: 'Help',
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
          width: double.infinity,
          height: 90,
          margin: const EdgeInsets.only(left: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(11),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Version: 1.1',
                style: MyFonts.getPoppin(
                  color: const Color(0xFF737373),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: ShapeDecoration(
                  color: const Color(0x93D9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 5),
                    const CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(
                        MyImages.claire,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Clair Dongais',
                            style: MyFonts.getPoppin(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'clairdongais@gmail.com',
                            style: MyFonts.getPoppin(
                              color: const Color(0xFF918F8F),
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        GoogleSignIn().signOut();
                        Navigator.of(context).pushReplacementNamed(
                          CarsouelSlide.routeName,
                        );
                      },
                      icon: const Icon(
                        Icons.logout,
                        color: Color(0xFF918F8F),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
