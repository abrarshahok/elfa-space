import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '/news_feed/app/drawer_menu_screen.dart';
import '/news_feed/news/news_screen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  static const routeName = '/app-drawer';
  AppDrawer({super.key});
  final zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple,
              Colors.purple,
            ],
          ),
        ),
        child: ZoomDrawer(
          controller: zoomDrawerController,
          menuScreen: const DrawerMenuScreen(),
          mainScreen: const NewsScreen(),
          borderRadius: 24.0,
          showShadow: true,
          angle: 0.0,
          drawerShadowsBackgroundColor: Colors.grey[300]!,
          slideWidth: MediaQuery.of(context).size.width * 0.65,
        ),
      ),
    );
  }
}
