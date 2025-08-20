import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social/presentation/profile/widgets/profile_card.dart';
import 'package:social/presentation/profile/widgets/profile_desc.dart';
import 'package:social/presentation/profile/widgets/profile_highlight.dart';
import 'package:social/presentation/profile/widgets/profile_tab.dart';
import 'package:social/core/routes/app_router.dart';

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
            child: MenuAnchor(
              builder: (context, controller, child) {
                return IconButton(
                  onPressed: () {
                    controller.isOpen ? controller.close() : controller.open();
                  },
                  icon: const Icon(Icons.more_horiz, color: Colors.black),
                );
              },
              menuChildren: [
                MenuItemButton(
                  leadingIcon: const Icon(Icons.logout, color: Colors.red),
                  onPressed: () {
                    context.router.replaceAll([const LoginRoute()]);
                  },
                  child: const Text("Đăng xuất"),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
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
