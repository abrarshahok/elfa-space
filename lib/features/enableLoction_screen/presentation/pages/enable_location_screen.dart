import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/location_widget.dart';
import 'package:elfa_main_dashboard/constants.dart';

class enableLocationScreen extends StatelessWidget {
  static const routeName = '/enableLocationScreen';
  const enableLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 8.w),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Enable Location',
                style: headingTheme.copyWith(fontSize: 28.sp)),
            SizedBox(
              height: 5.h,
            ),
            Text(
                'ElfaSpace receives your location when you are \nusing the app to search for nearby businesses, \ngives you a better local experience, and more.',
                style: paraTheme.copyWith(fontSize: 16.sp)),
            Image.asset('assets/splashAssets/location_1.png'),
            SizedBox(
              height: 30.h,
            ),
            const LocationButton(),
            SizedBox(
              height: 30.h,
            ),
            Text('You can adjust your location setting at any time',
                style: paraTheme.copyWith(fontSize: 12.sp)),
            Text('Learn More',
                style:
                    paraTheme.copyWith(fontSize: 12.sp, color: ksupportColor))
          ]),
        ),
      ),
    );
  }
}
