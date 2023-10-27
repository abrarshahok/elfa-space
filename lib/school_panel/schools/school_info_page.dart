import 'package:flutter/material.dart';
import '/../../constants/constants.dart';

class SchoolInfoPage extends StatefulWidget {
  static const routeName = '/school_info';
  const SchoolInfoPage({super.key});

  @override
  State<SchoolInfoPage> createState() => _SchoolInfoPageState();
}

class _SchoolInfoPageState extends State<SchoolInfoPage> {
  final draggableScrollableController = DraggableScrollableController();

  Widget customIconContainer(IconData icon) {
    return Container(
      width: 34,
      height: 34,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: Colors.purple,
      ),
    );
  }

  Widget categoryContainer(String category) {
    return Container(
      width: 97,
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFFF9F9F9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            category,
            textAlign: TextAlign.center,
            style: MyFonts.getPoppin(
              color: const Color(0xFF484848),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget categoryInfoContainer({
    required String title,
    required String description,
  }) {
    return Container(
      width: 358,
      decoration: ShapeDecoration(
        color: const Color(0x26D9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: MyFonts.getPoppin(
              color: const Color(0xFF484848),
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: MyFonts.getPoppin(
              color: const Color(0xFF686868),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget facultyContainer() {
    return Container(
      width: 155,
      height: 170,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 11,
            offset: Offset(0, -1),
            spreadRadius: 0,
          )
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            width: 137,
            height: 110,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage(MyImages.teacher),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          Text(
            'Faculty Member',
            textAlign: TextAlign.center,
            style: MyFonts.getPoppin(
              color: const Color(0xFF31302C),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            '“Principal”',
            textAlign: TextAlign.center,
            style: MyFonts.getPoppin(
              color: const Color(0xFFA19A81),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Container backButton() {
    return Container(
      width: 30,
      height: 32,
      padding: const EdgeInsets.only(right: 8),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFFB509D0), Color(0xFF8D1B9F)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
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
      alignment: Alignment.center,
      child: Transform.flip(
        flipX: true,
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget reviewContainer() {
    return Container(
      width: 245,
      height: 104,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 11,
            offset: Offset(0, -1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Review',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: const Color(0xFF31302C),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Container(
                width: 14,
                height: 15,
                margin: const EdgeInsets.only(right: 5),
                decoration: const ShapeDecoration(
                  color: Color.fromRGBO(251, 196, 18, 1),
                  shape: StarBorder(
                    points: 5,
                    innerRadiusRatio: 0.38,
                    pointRounding: 0.70,
                    valleyRounding: 0,
                    rotation: 0,
                    squash: 0,
                  ),
                ),
              ),
              Text(
                '4.9',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: const Color(0xFFA19A81),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            "“There are many variations, but the majority have suffered alteration in some form, by injected words which don't look even slightly believable.”",
            style: MyFonts.getPoppin(
              color: const Color(0xFF9F9F9F),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ).copyWith(fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }

  final categoryList = const [
    'Overview',
    'Faculty',
    'Location',
    'Reviews',
    'Services',
    'Gallery',
    'Timings',
    'Fee',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(MyImages.school1),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: customIconContainer(Icons.arrow_back_ios_new),
                ),
              ),
              Positioned(
                top: 30,
                right: 20,
                child: customIconContainer(Icons.share),
              ),
              Positioned(
                top: 30,
                right: 80,
                child: customIconContainer(Icons.favorite_border_outlined),
              ),
            ],
          ),
          DraggableScrollableSheet(
            controller: draggableScrollableController,
            initialChildSize: 0.65,
            maxChildSize: 0.9,
            minChildSize: 0.6,
            builder: (context, scrollController) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.all(20),
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 5),
                      Text(
                        'School Name',
                        textAlign: TextAlign.center,
                        style: MyFonts.getPoppin(
                          color: const Color(0xFF484848),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      customIconContainer(Icons.call_outlined),
                      const SizedBox(width: 10),
                      customIconContainer(Icons.chat_outlined),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Color(0xFFA19A81),
                        size: 30,
                      ),
                      Text(
                        'Z Block Y Town Faisalabad',
                        textAlign: TextAlign.center,
                        style: MyFonts.getPoppin(
                          color: const Color(0xFFA19A81),
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const SizedBox(width: 5),
                      Container(
                        width: 20,
                        height: 20,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: const ShapeDecoration(
                          color: Color.fromRGBO(251, 196, 18, 1),
                          shape: StarBorder(
                            points: 5,
                            innerRadiusRatio: 0.38,
                            pointRounding: 0.70,
                            valleyRounding: 0,
                            rotation: 0,
                            squash: 0,
                          ),
                        ),
                      ),
                      Text(
                        '4.9',
                        textAlign: TextAlign.center,
                        style: MyFonts.getPoppin(
                          color: const Color(0xFFA19A81),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '(34 reviews)',
                        textAlign: TextAlign.center,
                        style: MyFonts.getPoppin(
                          color: const Color(0xFFA19A81),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categoryList
                          .map((cat) => categoryContainer(cat))
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  categoryInfoContainer(
                    title: 'Overview',
                    description:
                        "There are many variations, but the majority have suffered alteration in some form, by injected words which don't look even slightly believable.\nThere are many variations, but the majority have suffered alteration in some formre many variations, but the majority have suffered alteration in some form, by injected words which don't look even slightly believable.",
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < 4; i++) facultyContainer()
                      ],
                    ),
                  ),
                  Text(
                    'Location',
                    style: MyFonts.getPoppin(
                      color: const Color(0xFF484848),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      image: const DecorationImage(
                        image: AssetImage(MyImages.mapImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Reviews',
                        textAlign: TextAlign.center,
                        style: MyFonts.getPoppin(
                          color: const Color(0xFF484848),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '(34 Reviews)',
                        textAlign: TextAlign.center,
                        style: MyFonts.getPoppin(
                          color: const Color(0xFF9F9F9F),
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      backButton(),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < 4; i++) reviewContainer(),
                      ],
                    ),
                  ),
                  categoryInfoContainer(
                    title: 'Services',
                    description:
                        "There are many variations, but the majority have suffered alteration in some form, by injected words which don't look even slightly believable.\nThere are many variations, but the majority have suffered alteration in some form, by injected words which don't look even slightly believable.\nThere are many variations, but the majority have suffered alteration in some form, by injected words which don't look even slightly believable.",
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Gallery',
                        textAlign: TextAlign.center,
                        style: MyFonts.getPoppin(
                          color: const Color(0xFF484848),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      backButton(),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          Container(
                            width: 218,
                            height: 135,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              image: const DecorationImage(
                                image: AssetImage(MyImages.school1),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  categoryInfoContainer(
                    title: 'Fee Structure',
                    description:
                        "There are many variations, but the majority have suffered alteration in some form, by injected words which don't look even slightly believable.\nThere are many variations, but the majority have suffered alteration in some form, by injected words which don't look even slightly believable.\nThere are many variations, but the majority have suffered alteration in some form, by injected words which don't look even slightly believable.",
                  ),
                  const SizedBox(height: 20),
                  categoryInfoContainer(
                    title: 'Timings',
                    description:
                        "There are many variations, but the majority have suffered alteration in some form, by injected words which don't look even slightly believable.",
                  ),
                  const SizedBox(height: 20),
                  categoryInfoContainer(
                    title: 'Contact',
                    description: "+92 310-3877376",
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
