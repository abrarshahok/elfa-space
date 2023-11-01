import 'package:elfa_main_dashboard/food_panel/components/shop_item_container.dart';
import 'package:elfa_main_dashboard/food_panel/features/cart/add_to_cart_screen.dart';
import 'package:flutter/material.dart';
import '/../../constants/constants.dart';

class ShopItemsScreen extends StatefulWidget {
  static const routeName = '/shop-items-screen';
  const ShopItemsScreen({super.key});

  @override
  State<ShopItemsScreen> createState() => _ShopItemsScreenState();
}

class _ShopItemsScreenState extends State<ShopItemsScreen> {
  final draggableScrollableController = DraggableScrollableController();

  Widget customIconContainer(IconData icon) {
    return Container(
      width: 43,
      height: 44,
      decoration: ShapeDecoration(
        color: const Color(0xFF9916AE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }

  Widget categoryContainer({
    required String category,
    bool isSelected = false,
  }) {
    return Container(
      width: 131,
      height: 38,
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xE5B30ACE) : const Color(0xE5D3CBD5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      margin: const EdgeInsets.only(left: 10),
      alignment: Alignment.center,
      child: Text(
        category,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontSize: 13,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    dynamic routeData = ModalRoute.of(context)?.settings.arguments;
    final shopInfo = routeData as Map<String, dynamic>;
    final categoryList = routeData['categories'] as List<dynamic>;
    final itemInfo = routeData['itemInfo'] as Map<String, dynamic>;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(shopInfo['image']),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 20,
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: customIconContainer(Icons.arrow_back_ios_new),
                  ),
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            controller: draggableScrollableController,
            initialChildSize: 0.8,
            maxChildSize: 0.9,
            minChildSize: 0.75,
            builder: (context, scrollController) => Container(
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 430,
                    height: 166,
                    padding: const EdgeInsets.only(left: 20),
                    decoration: const ShapeDecoration(
                      color: Color(0xFFB30ACE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              shopInfo['title'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              width: 108,
                              height: 25,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF2F2C2C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 20),
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: const ShapeDecoration(
                                      color: Color(0xFF10DA30),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    'Open',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          shopInfo['address'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          children: [
                            for (int i = 0; i < 5; i++)
                              Container(
                                width: 15,
                                height: 15,
                                margin: const EdgeInsets.only(left: 5),
                                decoration: const ShapeDecoration(
                                  color: Colors.purple,
                                  shape: StarBorder(
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors.white,
                                    ),
                                    points: 5,
                                    innerRadiusRatio: 0.38,
                                    pointRounding: 0,
                                    valleyRounding: 0,
                                    rotation: 0,
                                    squash: 0,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Contact: (022) 2631244',
                              style: TextStyle(
                                color: Colors.white
                                    .withOpacity(0.8199999928474426),
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '1 km away ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Get Directions',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.only(left: 10, top: 30),
                      controller: scrollController,
                      children: [
                        SizedBox(
                          height: 38,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categoryList.length,
                            itemBuilder: (ctx, index) => categoryContainer(
                              category: categoryList[index],
                              isSelected: index == 0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Text(
                          categoryList[0],
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Divider(),
                        for (int i = 0; i < 5; i++)
                          ShopItemContainer(
                            itemName: itemInfo['title'],
                            itemImage: itemInfo['image'],
                            price: 0.0,
                            onTap: () {
                              showModalBottomSheet(
                                enableDrag: true,
                                context: context,
                                builder: (_) => const AddToCartScreen(),
                                routeSettings: RouteSettings(
                                  arguments: {
                                    'itemName': itemInfo['title'],
                                    'itemImage': itemInfo['image'],
                                    'price': 0.0,
                                  },
                                ),
                              );
                            },
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
