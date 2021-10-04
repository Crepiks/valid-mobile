import "package:flutter/material.dart";
import 'package:valid/common/constants/colors.dart';
import 'package:valid/layouts/components/bottom_navigation.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          color: backgroundColor,
        ),
        Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 40, left: 20),
            child: BottomNavigation(
              activeIndex: _activeIndex,
            )),
      ],
    ));
  }
}
