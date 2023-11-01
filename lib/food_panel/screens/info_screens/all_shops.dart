import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/food_panel/components/all_shops_container_for_list_view.dart';
import 'shop_items_screen.dart';
import '../../../constants/constants.dart';

class AllShops extends StatelessWidget {
  static const routeName = '/all-shops';
  const AllShops({super.key});

  Widget categoryContainer({
    required String category,
    bool isSelected = false,
  }) {
    return Container(
      width: 114,
      height: 38,
      margin: const EdgeInsets.only(left: 10),
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xFFB30ACE) : const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        category,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: isSelected
              ? Colors.white
              : Colors.black.withOpacity(0.8500000238418579),
          fontSize: 12,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    dynamic routeData = ModalRoute.of(context)?.settings.arguments;
    final allShopsList = routeData['allShops'] as List<Map<String, dynamic>>;
    final categoryList = routeData['categories'] as List<dynamic>;
    final title = routeData['title'];
    final itemInfo = routeData['itemInfo'];
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
                  width: 44,
                  height: 46,
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
                    size: 31,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 27),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: const Color(0xD1920AB4),
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 21,
                        color: Colors.purple,
                      ),
                      Text(
                        'Latifabad, Hyderabad',
                        textAlign: TextAlign.center,
                        style: MyFonts.getPoppin(
                          color: const Color(0xFFB30ACE),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 44,
                height: 46,
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
                  Icons.notifications_active_outlined,
                  size: 31,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 15),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 38,
            child: ListView.builder(
              itemCount: categoryList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) => categoryContainer(
                category: categoryList[index],
                isSelected: index == 0,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Center(
              child: ListView.builder(
                itemCount: allShopsList.length,
                itemBuilder: (ctx, index) => Column(
                  children: [
                    AllShopsContainerForListView(
                      title: allShopsList[index]['title'],
                      image: allShopsList[index]['image'],
                      address: allShopsList[index]['address'],
                      onTap: () => Navigator.of(context).pushNamed(
                        ShopItemsScreen.routeName,
                        arguments: {
                          'title': allShopsList[index]['title'],
                          'image': allShopsList[index]['image'],
                          'address': allShopsList[index]['address'],
                          'categories': categoryList,
                          'itemInfo': itemInfo,
                        },
                      ),
                    ),
                    const Divider(),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
