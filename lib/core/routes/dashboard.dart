import 'package:auto_route/auto_route.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import 'package:flutter/material.dart';
import 'package:social/core/routes/app_router.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        SearchRoute(),
        // CreatePostRoute(),
        // NewsRoute(),
        // ProfileRoute(),
      ],
      extendBody: true,
      bottomNavigationBuilder: (context, tabsRouter) {
        return CurvedNavigationBar(
          // index đang chọn
          index: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          backgroundColor: Colors.transparent,
          color: Colors.white,
          buttonBackgroundColor: Theme.of(context).colorScheme.primary,
          height: 64,
          animationDuration: const Duration(milliseconds: 300),

          items: [
            CurvedNavigationBarItem(
              child: const Icon(Icons.home_outlined),
              label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: const Icon(Icons.search),
              label: 'Search',
            ),
            CurvedNavigationBarItem(
              child: const Icon(Icons.chat_bubble_outline),
              label: 'Chat',
            ),
            CurvedNavigationBarItem(
              child: const Icon(Icons.article_outlined),
              label: 'News',
            ),
            CurvedNavigationBarItem(
              child: const Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
