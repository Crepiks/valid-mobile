import 'package:flutter/material.dart';
import 'package:valid/common/constants/colors.dart';

class JobTag extends StatelessWidget {
  final String text;

  const JobTag({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
