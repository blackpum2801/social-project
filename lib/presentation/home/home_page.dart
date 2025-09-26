import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/presentation/home/widgets/home_appbar.dart';
import 'package:social/presentation/home/widgets/home_postcard.dart';
import 'package:social/presentation/home/widgets/home_stories.dart';
import 'package:social/presentation/home/widgets/home_post.dart';
import 'package:social/presentation/post/bloc/post_presenter.dart';
import 'package:social/presentation/post/bloc/post_state.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _postPresenter = injector.get<PostPresenter>();

  @override
  void initState() {
    super.initState();
    _postPresenter.getPosts();
  }

  @override
  void dispose() {
    _postPresenter.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<PostPresenter, PostState>(
          bloc: _postPresenter,
          buildWhen: (prev, curr) =>
              prev.postsResponse != curr.postsResponse ||
              prev.status != curr.status,
          builder: (context, state) {
            if (state.status == PostStatus.submissionInProgress) {
              return const Center(child: CircularProgressIndicator());
            }
            final posts = state.postsResponse?.content ?? [];

            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const Column(
                    children: [HomeAppBar(), HomeStories(), HomePost()],
                  );
                }
                final post = posts[index];
                return HomePostcard(post: post);
              },
            );
          },
        ),
      ),
    );
  }
}
