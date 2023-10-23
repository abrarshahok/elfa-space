import 'package:elfa_main_dashboard/constants.dart';
import 'package:elfa_main_dashboard/features/work_spaces/presentation/pages/favurite_panel.dart';
import 'package:elfa_main_dashboard/features/work_spaces/presentation/pages/inbox_panel.dart';
import 'package:elfa_main_dashboard/features/work_spaces/presentation/pages/profile_page.dart';
import 'package:elfa_main_dashboard/features/work_spaces/presentation/pages/work_space_home.dart';
import 'package:flutter/material.dart';

class WorkSpace extends StatefulWidget {
  static const routeName = '/workSpace';
  WorkSpace({Key? key});

  @override
  State<WorkSpace> createState() => _WorkSpaceState();
}

class _WorkSpaceState extends State<WorkSpace> {
  int _currentIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const FavoritePlacesScreen(),
    const InboxScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions.elementAt(_currentIndex),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            items: const [
              BottomNavigationBarItem(
                backgroundColor: kPrimaryColor,
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: kPrimaryColor,
                icon: Icon(Icons.bookmark),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                backgroundColor: kPrimaryColor,
                icon: Icon(Icons.mail),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                backgroundColor: kPrimaryColor,
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: _currentIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
