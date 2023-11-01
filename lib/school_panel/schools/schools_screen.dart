import 'package:flutter/material.dart';
import '/constants/constants.dart';
import '/school_panel/map/explore_on_map.dart';
import '/school_panel/schools/nearby_schools.dart';
import '/school_panel/schools/nearby_tuitions.dart';
import '/school_panel/schools/top_schools_and_tuitions.dart';

class SchoolsScreen extends StatelessWidget {
  const SchoolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        key: const ValueKey('schools'),
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: TopSchoolsAndTuitions(),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.95,
              height: 169,
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage(MyImages.kids),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: 360,
              height: 51,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFFB20ACD), Color(0xFF901AA3)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ExploreOnMap.routeName);
                },
                child: Text(
                  'Explore on Map',
                  textAlign: TextAlign.center,
                  style: MyFonts.getPoppin(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                const SizedBox(width: 10),
                customContainer(MyImages.pencil),
                const SizedBox(width: 10),
                customContainer(MyImages.kid1),
                const SizedBox(width: 10),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Schools / Academies Near you',
                style: MyFonts.getPoppin(
                  color: const Color(0xFF484848),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          const NearbySchools(),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Tuition Centers Near you',
                style: MyFonts.getPoppin(
                  color: const Color(0xFF484848),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          const NearbyTuitions(),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
        ],
      ),
    );
  }

  Widget customButton({
    IconData? icon,
    String? assetIcon,
    required String label,
    required Color color,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (assetIcon != null)
          Image.asset(
            assetIcon,
            color: color,
          ),
        if (icon != null)
          Icon(
            icon,
            color: color,
          ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: MyFonts.getPoppin(
            color: color,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Container customContainer(String imageName) {
    return Container(
      width: 164,
      height: 159,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(imageName),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 10,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
    );
  }
}
