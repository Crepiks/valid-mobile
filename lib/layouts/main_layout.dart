import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:valid/common/constants/colors.dart';
import 'package:valid/jobs/views/jobs_view.dart';
import 'package:valid/layouts/components/bottom_navigation.dart';
import 'package:valid/home/views/home_view.dart';
import 'package:valid/profile/views/profile_view.dart';
import 'package:valid/saved_jobs/views/saved_jobs_view.dart';

const screens = [HomeView(), JobsView(), SavedJobsView(), ProfileView()];

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _activeScreenIndex = 3;

  _onTabItemTap(index) {
    _vibrate();
    setState(() {
      _activeScreenIndex = index;
    });
  }

  _vibrate() {
    HapticFeedback.mediumImpact();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          color: backgroundColor,
          child: screens[_activeScreenIndex],
        ),
        Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 40, left: 20),
            child: BottomNavigation(
              activeIndex: _activeScreenIndex,
              onTap: _onTabItemTap,
            )),
      ],
    ));
  }
}
