import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social/presentation/home/widgets/home_appbar.dart';
import 'package:social/presentation/home/widgets/home_post.dart';
import 'package:social/presentation/home/widgets/home_postcard.dart';

import 'package:social/presentation/home/widgets/home_stories.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [HomeAppBar(), HomeStories(), HomePost(), HomePostcard()],
          ),
        ),
      ),
    );
  }
}
