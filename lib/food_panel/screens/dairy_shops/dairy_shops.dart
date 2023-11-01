import '../info_screens/all_shops.dart';
import '../info_screens/shop_items_screen.dart';
import '/constants/constants.dart';
import '/food_panel/components/all_shops_container_for_grid_view.dart';
import '/food_panel/components/top_shops_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DairyShops extends StatelessWidget {
  static const routeName = '/dairy-shops';
  const DairyShops({super.key});

  final topShopsList = const [
    {
      'title': "Creamy Delights",
      'image': MyImages.dairy1,
      'address': 'Latifabad No 10, Hyderabad',
    },
    {
      'title': "Milky Moo",
      'image': MyImages.dairy2,
      'address': 'Latifabad No 10, Hyderabad',
    },
  ];

  final allShopsList = const [
    {
      'title': "Creamy Delights",
      'image': MyImages.dairy1,
      'address': 'Latifabad No 10, Hyderabad',
    },
    {
      'title': "Milky Moo",
      'image': MyImages.dairy2,
      'address': 'Latifabad No 10, Hyderabad',
    },
    {
      'title': "Milky Moo",
      'image': MyImages.dairy2,
      'address': 'Latifabad No 10, Hyderabad',
    },
    {
      'title': "Creamy Delights",
      'image': MyImages.dairy1,
      'address': 'Latifabad No 10, Hyderabad',
    },
  ];

  final categoryList = const [
    'All',
    'Chinese',
    'Pakistani',
    'Italian',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 15),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 24,
                  height: 25,
                  alignment: Alignment.center,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFFB509D0), Color(0xFF8D1B9F)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x198D1B9F),
                        blurRadius: 25,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 27),
              Text(
                'Dairy Shops',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: const Color(0xD1920AB4),
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 26,
                    color: Colors.purple,
                  ),
                  Text(
                    'Latifabad, Hyderabad',
                    textAlign: TextAlign.center,
                    style: MyFonts.getPoppin(
                      color: const Color(0xFFB30ACE),
                      fontSize: 6,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 380,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 290,
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 25,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 20),
                      Image.asset(
                        MyIcons.searchIcon,
                        color: Colors.purple,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            label: Text(
                              'Search Food',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFBBB5BC),
                                letterSpacing: -0.28,
                              ),
                            ),
                          ),
                          onTapOutside: (_) =>
                              FocusManager.instance.primaryFocus!.unfocus(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFFB509D0), Color(0xFF8D1B9F)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x198D1B9F),
                        blurRadius: 25,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Image.asset(MyIcons.filterIcon),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Text(
                        'Top Dairy Shops Near You',
                        textAlign: TextAlign.center,
                        style: MyFonts.getPoppin(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            AllShops.routeName,
                            arguments: {
                              'allShops': topShopsList,
                              'categories': categoryList,
                              'title': 'Top Dairy Shops',
                              'itemInfo': {
                                'title': 'Coffee',
                                'image': MyImages.dairy2,
                                'price': 0.0,
                              },
                            },
                          );
                        },
                        icon: Transform.flip(
                          flipX: true,
                          child: const Icon(Icons.arrow_back_ios_new_rounded),
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 10),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 270,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: topShopsList.length,
                      itemBuilder: (ctx, index) => TopShopContainer(
                          image: topShopsList[index]['image'] as String,
                          title: topShopsList[index]['title'] as String,
                          address: topShopsList[index]['address'] as String,
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              ShopItemsScreen.routeName,
                              arguments: {
                                'title': topShopsList[index]['title'],
                                'image': topShopsList[index]['image'],
                                'address': topShopsList[index]['address'],
                                'categories': categoryList,
                                'itemInfo': {
                                  'title': 'Coffee',
                                  'image': MyImages.dairy2,
                                  'price': 0.0,
                                },
                              },
                            );
                          }),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 20),
                ),
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Text(
                        'All Dairy Shops',
                        textAlign: TextAlign.center,
                        style: MyFonts.getPoppin(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            AllShops.routeName,
                            arguments: {
                              'allShops': allShopsList,
                              'categories': categoryList,
                              'title': 'All Dairy Shops',
                              'itemInfo': {
                                'title': 'Coffee',
                                'image': MyImages.dairy2,
                                'price': 0.0,
                              },
                            },
                          );
                        },
                        child: const Text(
                          'View all',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFB30ACE),
                            fontSize: 11,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    childCount: allShopsList.length,
                    (context, index) => AllShopsContainerForGridView(
                      image: allShopsList[index]['image'] as String,
                      title: allShopsList[index]['title'] as String,
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          ShopItemsScreen.routeName,
                          arguments: {
                            'title': allShopsList[index]['title'],
                            'image': allShopsList[index]['image'],
                            'address': allShopsList[index]['address'],
                            'categories': categoryList,
                            'itemInfo': {
                              'title': 'Coffee',
                              'image': MyImages.dairy2,
                              'price': 0.0,
                            },
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
