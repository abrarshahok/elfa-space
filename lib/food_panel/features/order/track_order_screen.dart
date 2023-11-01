import 'package:elfa_main_dashboard/food_panel/components/custom_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackOrderScreen extends StatelessWidget {
  static const routeName = '/track-order-screen';
  const TrackOrderScreen({super.key});

  final lineStyle = const LineStyle(
    color: Colors.purple,
  );
  final indicatorStyle = const IndicatorStyle(
    color: Colors.purple,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            children: [
              const SizedBox(width: 20),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.cancel_presentation_rounded,
                  color: Colors.purple,
                  size: 25,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.message_outlined,
                  color: Colors.purple,
                  size: 25,
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          SizedBox(
            height: 520,
            child: ListView(
              padding: const EdgeInsets.only(left: 20),
              children: [
                TimelineTile(
                  isFirst: true,
                  beforeLineStyle: lineStyle,
                  indicatorStyle: indicatorStyle,
                  alignment: TimelineAlign.start,
                  endChild: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shopping',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7200000286102295),
                            fontSize: 25,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFF5F5F5),
                                shape: OvalBorder(),
                              ),
                              child: const Icon(
                                Icons.people_alt_rounded,
                                color: Colors.purple,
                              ),
                            ),
                            const SizedBox(width: 10),
                            SizedBox(
                              width: 251,
                              height: 54,
                              child: Text(
                                'We will notify you for any changes in your order.',
                                style: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.7200000286102295),
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        CustomRoundedButton(
                          onTap: () {},
                          label: 'See Shoping Items',
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
                TimelineTile(
                  beforeLineStyle: lineStyle,
                  indicatorStyle: indicatorStyle,
                  endChild: Container(
                    width: 292,
                    height: 31,
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Shopping Completed',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7200000286102295),
                        fontSize: 25,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                TimelineTile(
                  beforeLineStyle: lineStyle,
                  indicatorStyle: indicatorStyle,
                  endChild: Container(
                    width: 292,
                    height: 31,
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Delivering',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7200000286102295),
                        fontSize: 25,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                TimelineTile(
                  isLast: true,
                  beforeLineStyle: lineStyle,
                  indicatorStyle: indicatorStyle,
                  endChild: Container(
                    width: 292,
                    height: 31,
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Complete',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7200000286102295),
                        fontSize: 25,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              SizedBox(width: 20),
              Icon(
                Icons.schedule_rounded,
                color: Color(0xD1920AB4),
              ),
              SizedBox(width: 20),
              Text(
                'Delivery time: 12:00-1:00pm ',
                style: TextStyle(
                  color: Color(0xD1920AB4),
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Ruby just started shopping! We will notify you of there are any changes.',
              style: TextStyle(
                color: Colors.black.withOpacity(0.6700000166893005),
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
