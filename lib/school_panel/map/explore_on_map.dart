import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class ExploreOnMap extends StatefulWidget {
  static const routeName = '/explore-on-map';
  const ExploreOnMap({super.key});

  @override
  State<ExploreOnMap> createState() => _ExploreOnMapState();
}

class _ExploreOnMapState extends State<ExploreOnMap> {
  InputBorder getBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }

  Widget locationIcon() {
    return Stack(
      children: [
        Image.asset(
          MyIcons.mapPinIcon2,
          color: Colors.purple,
        ),
        const Positioned(
          top: 17,
          left: 19,
          child: Icon(
            Icons.location_on_outlined,
            color: Colors.white,
            size: 40,
          ),
        ),
      ],
    );
  }

  Widget customContainer(Widget child) {
    return Container(
      width: 44,
      height: 46,
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
      alignment: Alignment.center,
      child: child,
    );
  }

  Widget circleContainer(Widget child) {
    return Container(
      width: 44,
      height: 46,
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFFB509D0), Color(0xFF8D1B9F)],
        ),
        shape: OvalBorder(),
        shadows: [
          BoxShadow(
            color: Color(0x198D1B9F),
            blurRadius: 25,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      alignment: Alignment.center,
      child: child,
    );
  }

  Widget destinationInfo() {
    return SizedBox(
      width: 340,
      height: 204,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 340,
            height: 135,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage(MyImages.school2),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Work space 1',
            textAlign: TextAlign.center,
            style: MyFonts.getPoppin(
              color: const Color(0xFF31302C),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Color(0xFFA19A81),
                size: 20,
              ),
              Text(
                'Z Block Y Town Faisalabad',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: const Color(0xFFA19A81),
                  fontSize: 9,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Container(
                width: 14,
                height: 14,
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
              const SizedBox(width: 5),
              Text(
                '(34 reviews)',
                textAlign: TextAlign.center,
                style: MyFonts.getPoppin(
                  color: const Color(0xFFA19A81),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container yourLocationAndDestinationLocation() {
    return Container(
      width: 358,
      height: 130,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: const Color(0xFFF1E9F3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              circleContainer(
                const Icon(
                  Icons.my_location_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                'Your Location',
                style: MyFonts.getPoppin(
                  color: const Color(0xFF9F9F9F),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Divider(thickness: 1),
          Row(
            children: [
              circleContainer(
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                'Destination location',
                style: MyFonts.getPoppin(
                  color: const Color(0xFF9F9F9F),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MyImages.mapbox),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
                top: 40,
                bottom: 5,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.8,
                    height: 50,
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
                          offset: Offset(0, 10),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        const SizedBox(width: 20),
                        Image.asset(MyIcons.searchIcon),
                        const SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: MyFonts.getPoppin(
                                color: const Color(0xFFBBB5BC),
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ).copyWith(height: 1),
                              enabledBorder: getBorder(
                                color: Colors.white,
                              ),
                              focusedBorder: getBorder(
                                color: Colors.white,
                              ),
                              errorBorder: getBorder(
                                color: Colors.red,
                              ),
                              focusedErrorBorder: getBorder(
                                color: Colors.red,
                              ),
                            ),
                            onTapOutside: (event) =>
                                FocusScope.of(context).unfocus(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  customContainer(Image.asset(MyIcons.filterIcon)),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 60,
                        left: 60,
                        child: Image.asset(
                          MyImages.direction,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        child: locationIcon(),
                      ),
                      Positioned(
                        bottom: 33,
                        left: 80,
                        child: Container(
                          width: 41,
                          height: 41,
                          padding: const EdgeInsets.only(bottom: 8, left: 4),
                          decoration: const ShapeDecoration(
                            color: Color(0xFF9916AE),
                            shape: OvalBorder(),
                          ),
                          child: Transform.rotate(
                            angle: 120,
                            child: Image.asset(MyIcons.compass),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 90,
                        right: 30,
                        child: customContainer(
                          const Icon(
                            Icons.my_location_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        right: 30,
                        child: customContainer(
                          const Icon(
                            Icons.explore_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 281,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 25,
              offset: Offset(0, -9),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 3,
              width: 200,
              color: const Color(0xFF9F9F9F),
            ),
            if (currentIndex == 0) yourLocationAndDestinationLocation(),
            if (currentIndex == 1) destinationInfo(),
            Container(
              width: 331,
              height: 46,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFFB30ACE), Color(0xFF8F1AA1)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if (currentIndex == 0) {
                      currentIndex = 1;
                    } else {
                      currentIndex = 0;
                    }
                  });
                },
                child: Text(
                  currentIndex == 0 ? 'Go Now' : 'Back',
                  style: MyFonts.getPoppin(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
