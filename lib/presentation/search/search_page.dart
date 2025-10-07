import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/presentation/search/bloc/search_presenter.dart';
import 'package:social/presentation/search/bloc/search_state.dart';
import 'package:social/presentation/search/widgets/search_friend_suggestion_card.dart';
import 'package:social/presentation/search/widgets/search_item.dart';
import 'package:social/presentation/search/widgets/search_recent.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _presenter = injector.get<SearchPresenter>();
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    _presenter.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchPresenter, SearchState>(
      bloc: _presenter,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchItem(
                  controller: _controller,
                  onChanged: (keyword) {
                    if (keyword.isNotEmpty) {
                      _presenter.searchUsers(keyword);
                    }
                  },
                  onClear: () {
                    _controller.clear();
                  },
                ),
                const SizedBox(height: 20),
                const SearchRecent(),
                const SizedBox(height: 20),
                const SearchFriendSuggestionCard(),
              ],
            ),
          ),
        );
      },
    );
  }
}
