import "package:flutter/material.dart";
import 'package:valid/common/constants/colors.dart';
import 'package:valid/jobs/views/jobs_view.dart';
import 'package:valid/layouts/components/bottom_navigation.dart';
import 'package:valid/home/views/home_view.dart';
import 'package:valid/saved_jobs/views/saved_jobs_view.dart';

const screens = [HomeView(), JobsView(), SavedJobsView()];

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final int _activeScreenIndex = 2;

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
            )),
      ],
    ));
  }
}
