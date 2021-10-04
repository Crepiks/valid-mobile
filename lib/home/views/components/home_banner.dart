import "package:flutter/material.dart";
import 'package:valid/common/constants/colors.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: const BoxDecoration(
          color: primaryColor,
          image: DecorationImage(
              image: AssetImage('assets/images/reading.png'),
              scale: 3.2,
              alignment: Alignment(1.8, 3)),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Нанимаете сотрудников?",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "Узнайте какие преимущества Ваше предприятие может получить, нанимая особенных людей",
            style: TextStyle(fontSize: 14, color: Colors.white),
          )
        ],
      ),
    );
  }
}
