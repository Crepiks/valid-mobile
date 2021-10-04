import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valid/common/constants/colors.dart';

class BottomNavigation extends StatelessWidget {
  final int activeIndex;

  const BottomNavigation({Key? key, required this.activeIndex})
      : super(key: key);

  Widget _buildButton({required Widget icon, bool active = false}) {
    const double buttonSize = 60;

    return Container(
      height: buttonSize,
      width: buttonSize,
      decoration: active
          ? BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor.withOpacity(0.1),
            )
          : null,
      child: IconButton(
        onPressed: () {},
        icon: icon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildButton(
              icon: const FaIcon(FontAwesomeIcons.sistrix),
              active: activeIndex == 0),
          _buildButton(
              icon: const FaIcon(FontAwesomeIcons.building),
              active: activeIndex == 1),
          _buildButton(
              icon: const FaIcon(FontAwesomeIcons.heart),
              active: activeIndex == 2),
          _buildButton(
              icon: const FaIcon(FontAwesomeIcons.user),
              active: activeIndex == 3),
        ],
      ),
    );
  }
}
