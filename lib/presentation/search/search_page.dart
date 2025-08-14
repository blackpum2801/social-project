import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social/presentation/search/widgets/search_friend_suggestion_card.dart';
import 'package:social/presentation/search/widgets/search_item.dart';
import 'package:social/presentation/search/widgets/search_recent.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchItem(),
            SizedBox(height: 20),
            SearchRecent(),
            SizedBox(height: 20),
            SearchFriendSuggestionCard(),
          ],
        ),
      ),
    );
  }
}
