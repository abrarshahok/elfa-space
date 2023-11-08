import 'package:elfa_main_dashboard/features/carsouelSlide/presentation/widgets/login_form.dart';
import 'package:elfa_main_dashboard/features/carsouelSlide/presentation/widgets/signup_form.dart';
import 'package:elfa_main_dashboard/marriage_hall_panel/components/map/hall_map.dart';

import '/marriage_hall_panel/features/book_hall/confirm_info_page.dart';
import '/marriage_hall_panel/features/book_hall/booking_done.dart';
import 'marriage_hall_panel/features/book_hall/add_info_page.dart';
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
import 'school_panel/map/explore_on_map.dart';
import 'school_panel/schools/school_info_page.dart';
import 'gym_panel/screens/gym_home_page.dart';
import 'gym_panel/screens/gym_screen.dart';
import 'gym_panel/features/booking/booking_info_page.dart';
import 'gym_panel/features/booking/booking_page.dart';
import 'gym_panel/features/booking/e_receipt_page.dart';
import 'gym_panel/features/booking/payment_done_page.dart';
import 'gym_panel/features/booking/payment_methods/add_card.dart';
import 'gym_panel/features/booking/payment_methods/payment_methods.dart';
import 'gym_panel/features/booking/review_summary_page.dart';
import 'gym_panel/features/booking/select_package_page.dart';
import 'gym_panel/features/booking/select_trainer_page.dart';
import 'gym_panel/features/gym/gym_direction/arrived_gym_page.dart';
import 'gym_panel/features/gym/gym_direction/get_direction_page.dart';
import 'gym_panel/features/gym/gym_direction/gym_direction_page.dart';
import 'gym_panel/features/filters/gym_filters.dart';
import 'gym_panel/features/gym/gym_info/gym_info_page.dart';
import 'news_feed/app/app_drawer.dart';
import 'news_feed/news/news_screen.dart';
import 'food_panel/home/food_panel_home.dart';
import 'food_panel/features/cart/cart_screen.dart';
import 'food_panel/screens/groceries/groceries.dart';
import 'food_panel/screens/meat_shops/meat_shops.dart';
import 'food_panel/features/order/order_screen.dart';
import 'food_panel/screens/info_screens/all_shops.dart';
import 'food_panel/screens/bakeries/bakeries.dart';
import 'food_panel/screens/chicken_shops/chicken_shops.dart';
import 'food_panel/screens/info_screens/shop_items_screen.dart';
import 'food_panel/features/order/order_placed_screen.dart';
import 'food_panel/features/order/track_order_screen.dart';
import 'food_panel/screens/local_food_shops/local_food_shops.dart';
import 'food_panel/screens/dairy_shops/dairy_shops.dart';
import 'marriage_hall_panel/screens/marriage_hall_detail_screen.dart';

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
            ChickenShops.routeName: (context) => const ChickenShops(),
            AllShops.routeName: (context) => const AllShops(),
            ShopItemsScreen.routeName: (context) => const ShopItemsScreen(),
            CartScreen.routeName: (context) => const CartScreen(),
            OrderScreen.routeName: (context) => const OrderScreen(),
            OrderPlacedScreen.routeName: (context) => const OrderPlacedScreen(),
            TrackOrderScreen.routeName: (context) => const TrackOrderScreen(),
            LocalFoodShops.routeName: (context) => const LocalFoodShops(),
            MeatShops.routeName: (context) => const MeatShops(),
            DairyShops.routeName: (context) => const DairyShops(),
            Bakeries.routeName: (context) => const Bakeries(),
            Groceries.routeName: (context) => const Groceries(),
            MarriageHallDetailScreen.routeName: (context) =>
                const MarriageHallDetailScreen(),
            AddInfoPage.routeName: (context) => AddInfoPage(),
            ConfirmInfoPage.routeName: (context) => ConfirmInfoPage(),
            BookingDonePage.routeName: (context) => const BookingDonePage(),
            HallMap.routeName: (context) => HallMap(),
            LogInForm.routeName: (context) => const LogInForm(),
            SignUpForm.routeName: (context) => const SignUpForm(),
          },
        ),
      );
    });
  }
}
