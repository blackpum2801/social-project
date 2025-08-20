import 'package:auto_route/auto_route.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import 'package:flutter/material.dart';
import 'package:social/core/constants/navigation_strings.dart';
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
        PostRoute(),
        ChatRoute(),
        ProfileRoute(),
      ],
      extendBody: true,
      bottomNavigationBuilder: (context, tabsRouter) {
        return CurvedNavigationBar(
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
              label: NavigationStrings.homeTab,
            ),
            CurvedNavigationBarItem(
              child: const Icon(Icons.search),
              label: NavigationStrings.searchTab,
            ),
            CurvedNavigationBarItem(
              child: const Icon(Icons.create_outlined),
              label: NavigationStrings.createTab,
            ),
            CurvedNavigationBarItem(
              child: const Icon(Icons.article_outlined),
              label: NavigationStrings.chatTab,
            ),
            CurvedNavigationBarItem(
              child: const Icon(Icons.person_outline),
              label: NavigationStrings.profileTab,
            ),
          ],
        );
      },
    );
  }
}
