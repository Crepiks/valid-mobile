import "package:flutter/material.dart";
import 'package:valid/home/views/components/home_banner.dart';
import 'package:valid/home/views/components/home_header.dart';
import 'package:valid/common/components/job_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), child: HomeHeader()),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: HomeBanner(),
        ),
        const SizedBox(
          height: 26,
        ),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Подходящие вакансии",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          width: double.infinity,
          height: 260,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 20),
              SizedBox(
                width: 350,
                child: Column(children: const [JobCard()]),
              ),
              const SizedBox(width: 14),
              SizedBox(
                width: 350,
                child: Column(children: const [JobCard()]),
              ),
              const SizedBox(width: 14),
              SizedBox(
                width: 350,
                child: Column(children: const [JobCard()]),
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}
