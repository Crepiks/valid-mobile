import "package:flutter/material.dart";
import 'package:valid/home/views/components/home_banner.dart';
import 'package:valid/home/views/components/home_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), child: HomeHeader()),
        SizedBox(
          height: 14,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: HomeBanner(),
        )
      ],
    );
  }
}
