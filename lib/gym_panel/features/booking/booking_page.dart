import 'package:flutter/material.dart';
import 'select_trainer_page.dart';
import '/../../constants/constants.dart';
import '../../components/custom_bottom_app_bar.dart';

class BookingPage extends StatefulWidget {
  static const routeName = '/booking';
  BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final draggableScrollableController = DraggableScrollableController();

  final List<Map<String, String>> checkInList = const [
    {
      'day': 'Today',
      'date': '9 Oct',
    },
    {
      'day': 'Mon',
      'date': '10 Oct',
    },
    {
      'day': 'Tue',
      'date': '11 Oct',
    },
    {
      'day': 'Wed',
      'date': '12 Oct',
    },
  ];

  final List<Map<String, String>> checkOutList = const [
    {
      'day': 'Today',
      'date': '9 Nov',
    },
    {
      'day': 'Mon',
      'date': '10 Nov',
    },
    {
      'day': 'Tue',
      'date': '11 Nov',
    },
    {
      'day': 'Wed',
      'date': '12 Nov',
    },
  ];

  Widget customContainer({
    required String day,
    required String date,
    required bool isSelected,
  }) {
    return Container(
      width: 86,
      height: 50,
      margin: const EdgeInsets.only(right: 15),
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xFF9916AE) : const Color(0x269916AE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: MyFonts.getPoppin(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            date,
            style: MyFonts.getPoppin(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget customIconContainer(IconData icon) {
    return Container(
      width: 44,
      height: 44,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }

  int selectedCheckIn = 0;

  void onCheckInSelected(int index) {
    setState(() {
      selectedCheckIn = index;
    });
  }

  int selectedCheckOut = 0;

  void onCheckOutSelected(int index) {
    setState(() {
      selectedCheckOut = index;
    });
  }

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
                    image: AssetImage(MyImages.gymImage),
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
                child: customIconContainer(Icons.favorite_border_outlined),
              ),
              Positioned(
                top: 30,
                right: 80,
                child: customIconContainer(Icons.share),
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
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: ListView(
                padding: const EdgeInsets.only(left: 22),
                controller: scrollController,
                children: [
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 53,
                        height: 26,
                        decoration: ShapeDecoration(
                          color: const Color(0x269916AE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'GYM',
                          textAlign: TextAlign.center,
                          style: MyFonts.getPoppin(
                            color: const Color(0xFF9916AE),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 15,
                        height: 16,
                        decoration: const ShapeDecoration(
                          color: Color(0xA8FF9500),
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
                      const SizedBox(width: 5),
                      Text(
                        '4.9 (365 reviews)',
                        style: MyFonts.getPoppin(
                          color: const Color(0x993C3C43),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Muscle Mania',
                          style: MyFonts.getPoppin(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '1012 Ocean Avenue, New York, USA',
                          style: MyFonts.getPoppin(
                            color: const Color(0x993C3C43),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Divider(),
                  Text(
                    'BOOK MEMBERSHIP',
                    style: MyFonts.getPoppin(
                      color: const Color(0x993C3C43),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Check In',
                    style: MyFonts.getPoppin(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < checkInList.length; i++)
                          InkWell(
                            onTap: () => onCheckInSelected(i),
                            child: customContainer(
                              day: checkInList[i]['day']!,
                              date: checkInList[i]['date']!,
                              isSelected: i == selectedCheckIn,
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Check Out',
                    style: MyFonts.getPoppin(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < checkOutList.length; i++)
                          InkWell(
                            onTap: () => onCheckOutSelected(i),
                            child: customContainer(
                              day: checkOutList[i]['day']!,
                              date: checkOutList[i]['date']!,
                              isSelected: i == selectedCheckOut,
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Note to Owner',
                    style: MyFonts.getPoppin(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 129,
                    margin: const EdgeInsets.only(right: 20),
                    padding: const EdgeInsets.only(left: 20),
                    decoration: ShapeDecoration(
                      color: const Color(0x269916AE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        label: FittedBox(
                          child: Text(
                            'Enter here',
                            textAlign: TextAlign.start,
                            style: MyFonts.getPoppin(
                              color: const Color(0x993C3C43),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
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
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomAppBar(
        label: 'Submit',
        onPressed: () {
          Navigator.of(context).pushNamed(SelectTrainerPage.routeName);
        },
      ),
    );
  }
}
