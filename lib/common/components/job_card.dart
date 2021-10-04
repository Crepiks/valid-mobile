import "package:flutter/material.dart";
import 'package:valid/common/components/job_tag.dart';

class JobCard extends StatelessWidget {
  const JobCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "20 февраль 2020, Алматы",
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            "Разработчик Web-приложений",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Мы компания KMF, занимаемся разработкой продуктов в сфере микрофинансов. Мы ищем мотивированного разработчика веб-приложений, который будет разрабатывать веб-платформу компании",
            style: TextStyle(color: Colors.black87),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              JobTag(text: "Разработка ПО"),
              SizedBox(
                width: 8,
              ),
              JobTag(text: "JavaScript")
            ],
          )
        ],
      ),
    );
  }
}
