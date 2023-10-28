import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/constants/constants.dart';
import 'package:flutter/material.dart';

class DrawerMenuScreen extends StatelessWidget {
  const DrawerMenuScreen({super.key});

  Widget customListTile({required IconData icon, required String title}) {
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
      ],
    );
  }
}
