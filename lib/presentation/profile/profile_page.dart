import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social/presentation/profile/widgets/profile_card.dart';
import 'package:social/presentation/profile/widgets/profile_desc.dart';
import 'package:social/presentation/profile/widgets/profile_highlight.dart';
import 'package:social/presentation/profile/widgets/profile_tab.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        centerTitle: true,
        title: const Text(
          '@nguyenvana',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz, color: Colors.black),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileCard(),
              ProfileDesc(),
              ProfileHighlights(),
              ProfileTabs(),
            ],
          ),
        ),
      ),
    );
  }
}
