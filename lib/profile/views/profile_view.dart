import 'package:flutter/material.dart';
import 'components/profile_actions.dart';
import 'components/profile_card.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, bottom: 100),
        child: ListView(
          children: const [
            SizedBox(height: 10),
            ProfileCard(),
            SizedBox(height: 14),
            ProfileActions()
          ],
        ));
  }
}
