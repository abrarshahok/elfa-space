import 'package:elfa_main_dashboard/constants/constants.dart';
import 'package:elfa_main_dashboard/marriage_hall_panel/components/map/hall_map.dart';
import 'package:elfa_main_dashboard/marriage_hall_panel/features/book_hall/add_info_page.dart';
import 'package:flutter/material.dart';

class MarriageHallDetailScreen extends StatelessWidget {
  static const routeName = '/marriage-hall-detail';
  const MarriageHallDetailScreen({super.key});

  Widget customTile({required IconData icon, required String title}) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Icon(
        icon,
        size: 24,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: MyFonts.getPoppin(
          color: const Color(0xFFB20ACD),
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget directionButton({required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x192F2B43),
              blurRadius: 12,
              offset: Offset(0, 6),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on_rounded,
              color: Color(0xFFB20ACD),
              size: 25,
            ),
            const SizedBox(width: 6),
            Text(
              'Directions',
              style: MyFonts.getPoppin(
                color: const Color(0xFFB20ACD),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bookHallButton({required VoidCallback onTap}) {
    return Container(
      width: 153,
      height: 40,
      decoration: ShapeDecoration(
        color: const Color(0xFFB20ACD),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x7FB20ACD),
            blurRadius: 8,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          'Book Hall',
          style: MyFonts.getPoppin(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget reviewContainer() {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Arif Ali',
                style: MyFonts.getPoppin(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              for (int i = 0; i < 5; i++)
                const Icon(
                  Icons.star,
                  size: 24,
                  color: Colors.purple,
                ),
            ],
          ),
          Text(
            'Very nice place!',
            style: MyFonts.getPoppin(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 390,
            height: 320,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(MyImages.hall2),
                fit: BoxFit.cover,
              ),
              gradient: LinearGradient(
                begin: const Alignment(-0.00, 1.00),
                end: const Alignment(0, -1),
                colors: [
                  Colors.black.withOpacity(0.8999999761581421),
                  const Color(0x00D9D9D9)
                ],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 30,
                  top: 40,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.25),
                        shape: const OvalBorder(
                          side: BorderSide(width: 2, color: Colors.white),
                        ),
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(right: 2),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Venue Name',
                  textAlign: TextAlign.center,
                  style: MyFonts.getPoppin(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: customTile(
                        icon: Icons.timelapse_outlined,
                        title: '8am - 12am',
                      ),
                    ),
                    Expanded(
                      child: customTile(
                        icon: Icons.currency_rupee,
                        title: '50K / hour',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: customTile(
                        icon: Icons.location_on_outlined,
                        title: '5 KM',
                      ),
                    ),
                    Expanded(
                      child: customTile(
                        icon: Icons.star_border,
                        title: '4.2',
                      ),
                    ),
                  ],
                ),
                customTile(
                  icon: Icons.call,
                  title: '+92 310-3877376',
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              directionButton(onTap: () {
                Navigator.of(context).pushNamed(HallMap.routeName);
              }),
              bookHallButton(onTap: () {
                Navigator.of(context).pushNamed(AddInfoPage.routeName);
              }),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: Colors.purple,
                    unselectedLabelColor: const Color(0xFFB0B0B0),
                    dividerColor: Colors.grey[200],
                    labelColor: Colors.purple,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: false,
                    unselectedLabelStyle: MyFonts.getPoppin(
                      color: const Color(0xFFB0B0B0),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    labelStyle: MyFonts.getPoppin(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    tabs: const [
                      Tab(text: 'In App Reviews (24)'),
                      Tab(text: 'Google Reviews (18)'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Center(
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (ctx, index) => reviewContainer(),
                          ),
                        ),
                        Center(
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (ctx, index) => reviewContainer(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
