import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/carsouelSlide/presentation/provider/dot_changer.dart';
import 'features/splash_screen/presentation/provider/splash_screen_animator.dart';
import 'features/work_spaces/presentation/pages/work_space.dart';
import 'features/exploreScreen/screen_toggler.dart';
import 'features/splash_screen/presentation/pages/splash_screen.dart';
import 'features/carsouelSlide/presentation/provider/drawer_state_provider.dart';
import 'features/carsouelSlide/presentation/provider/circle_indicator_provider.dart';
import 'features/enableLoction_screen/presentation/pages/enable_location_screen.dart';
import 'features/carsouelSlide/presentation/pages/carsouel_slide.dart';
import 'features/carsouelSlide/presentation/provider/error_provider.dart';
import 'food_panel/home/food_panel_home.dart';
import 'school_panel/map/explore_on_map.dart';
import 'school_panel/schools/school_info_page.dart';
import 'gym_panel/gym_screen/gym_home_page.dart';
import 'gym_panel/gym_screen/gym_screen.dart';
import 'gym_panel/features/booking/booking_info_page.dart';
import 'gym_panel/features/booking/booking_page.dart';
import 'gym_panel/features/booking/e_receipt_page.dart';
import 'gym_panel/features/booking/payment_done_page.dart';
import 'gym_panel/features/booking/payment_methods/add_card.dart';
import 'gym_panel/features/booking/payment_methods/payment_methods.dart';
import 'gym_panel/features/booking/review_summary_page.dart';
import 'gym_panel/features/booking/select_package_page.dart';
import 'gym_panel/features/booking/select_trainer_page.dart';
import 'gym_panel/features/filters/gym_filters.dart';
import 'gym_panel/features/gym/gym_direction/arrived_gym_page.dart';
import 'gym_panel/features/gym/gym_direction/get_direction_page.dart';
import 'gym_panel/features/gym/gym_direction/gym_direction_page.dart';
import 'gym_panel/features/gym/gym_info/gym_info_page.dart';
import 'news_feed/app/app_drawer.dart';
import 'news_feed/news/news_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CircleIndicatorProvider()),
          ChangeNotifierProvider(create: (_) => errorProvider()),
          ChangeNotifierProvider(create: (_) => DotChanger()),
          ChangeNotifierProvider(create: (_) => SplashScreenAnimator()),
          ChangeNotifierProvider(create: (_) => ScreenToggler()),
          ChangeNotifierProvider(create: (_) => DrawerStateProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'eflaspace',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            brightness: Brightness.light,
          ),
          home: const SplashScreen(),
          routes: {
            EnableLocationScreen.routeName: (ctx) =>
                const EnableLocationScreen(),
            CarsouelSlide.routeName: (ctx) => const CarsouelSlide(),
            WorkSpace.routeName: (ctx) => WorkSpace(),
            NewsScreen.routeName: (context) => const NewsScreen(),
            GymHomePage.routeName: (context) => GymHomePage(),
            GymScreen.routeName: (context) => GymScreen(),
            GymFilters.routeName: (context) => GymFilters(),
            GymInfoPage.routeName: (context) => const GymInfoPage(),
            BookingPage.routeName: (context) => BookingPage(),
            SelectTrainerPage.routeName: (context) => const SelectTrainerPage(),
            BookingInfoPage.routeName: (context) => const BookingInfoPage(),
            SelectPackagePage.routeName: (context) => const SelectPackagePage(),
            PaymentMethods.routeName: (context) => const PaymentMethods(),
            AddCard.routeName: (context) => const AddCard(),
            ReviewSummaryPage.routeName: (context) => const ReviewSummaryPage(),
            ERecieptPage.routeName: (context) => const ERecieptPage(),
            PaymentDonePage.routeName: (context) => const PaymentDonePage(),
            GymDirectionPage.routeName: (context) => const GymDirectionPage(),
            GetDirectionPage.routeName: (context) => const GetDirectionPage(),
            ArrivedGymPage.routeName: (context) => const ArrivedGymPage(),
            ExploreOnMap.routeName: (context) => const ExploreOnMap(),
            SchoolInfoPage.routeName: (context) => const SchoolInfoPage(),
            AppDrawer.routeName: (context) => AppDrawer(),
            FoodPanelHome.routeName: (context) => const FoodPanelHome(),
          },
        ),
      );
    });
  }
}
