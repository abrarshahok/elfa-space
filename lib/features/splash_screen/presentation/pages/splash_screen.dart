import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../provider/splash_screen_animator.dart';
import '../../domain/utilities/utils.dart';
import '../../../../constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Utils utitlities = Utils();
  @override
  void initState() {
    utitlities.splashService(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                decoration: BoxDecoration(
                    borderRadius:
                        Provider.of<SplashScreenAnimator>(context).isExpanded
                            ? BorderRadius.circular(95)
                            : BorderRadius.circular(0),
                    gradient: const LinearGradient(
                      colors: kgradientColors,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                duration: const Duration(seconds: 1), // Animation duration
                curve: Curves.easeInOut, // Animation curve
                width: Provider.of<SplashScreenAnimator>(context).isExpanded
                    ? 95.h
                    : MediaQuery.of(context).size.width,
                height: Provider.of<SplashScreenAnimator>(context).isExpanded
                    ? 95.w
                    : MediaQuery.of(context).size.height,
                child: Center(
                  child: Stack(children: [
                    SizedBox(
                      child: Image.asset(
                        'assets/splashAssets/es_logo.png',
                        height: 95.w,
                        width: 95.h,
                      ),
                    ),
                  ]),
                )

                //   Provider.of<SplashScreenAnimator>(context).isExpanded
                //       ? const SizedBox()
                //       : Positioned(
                //           top: 410.h,
                //           left: 35.w,
                //           child: Divider(
                //             color: const Color(0xffB409CE),
                //             thickness: 2,
                //             indent: 50.w,
                //             endIndent: 50.w,
                //           ),
                //         ),
                // ],
                ),
            Provider.of<SplashScreenAnimator>(context).isExpanded
                ? Text(
                    'Elfaspace',
                    style: TextStyle(
                        fontFamily: 'Merienda',
                        fontSize: 30.sp,
                        color: const Color(0xffB409CE)),
                  )
                : const SizedBox(),
            Provider.of<SplashScreenAnimator>(context).isExpanded
                ? Positioned(
                    // top: 410.h,
                    // left: 35.w,
                    child: Text('Everything available at your fingertips',
                        style: TextStyle(
                            fontFamily: 'Merienda',
                            fontSize: 15.sp,
                            color: kprimayTextColor)),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   bool isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title:const  Text('Expandable Container'),
//       // ),
//       body: Center(
//         child: Align(
//             alignment: Alignment.center,
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 500),
//               curve: Curves.easeInOut,
//               height: isExpanded
//                   ? 1.0.sh
//                   : MediaQuery.of(context)
//                       .size
//                       .height, // Expand to full page height
//               width: isExpanded
//                   ? 1.0.sw
//                   : MediaQuery.of(context)
//                       .size
//                       .height, // Expand to full page width
//               child: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     isExpanded = !isExpanded;
//                   });
//                 },
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/splashAssets/es_logo.png',
//                       height: 95.0.w,
//                       width: 95.0.h,
//                     ),
//                     // Add other widgets or content here as needed
//                   ],
//                 ),
//               ),
//             )),
//       ),
//     );
//   }
// }
