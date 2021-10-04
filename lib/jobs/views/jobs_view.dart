import 'package:flutter/material.dart';
import 'package:valid/common/components/job_card.dart';

class JobsView extends StatefulWidget {
  const JobsView({Key? key}) : super(key: key);

  @override
  _JobsViewState createState() => _JobsViewState();
}

class _JobsViewState extends State<JobsView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Вакансии",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
        ),
        SizedBox(
          height: 14,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), child: JobCard()),
        SizedBox(
          height: 16,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), child: JobCard()),
        SizedBox(
          height: 16,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), child: JobCard()),
        SizedBox(
          height: 16,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), child: JobCard()),
        SizedBox(
          height: 120,
        ),
      ],
    );
  }
}
