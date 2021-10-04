import 'package:flutter/material.dart';
import 'package:valid/common/components/job_card.dart';

class SavedJobsView extends StatefulWidget {
  const SavedJobsView({Key? key}) : super(key: key);

  @override
  _SavedJobsViewState createState() => _SavedJobsViewState();
}

class _SavedJobsViewState extends State<SavedJobsView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Сохраненное",
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
          height: 120,
        ),
      ],
    );
  }
}
