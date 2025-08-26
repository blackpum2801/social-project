import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/routes/app_router.dart';
import 'package:social/presentation/login/bloc/login_presenter.dart';
import 'package:social/presentation/login/bloc/login_state.dart';
import 'package:social/presentation/profile/widgets/profile_card.dart';
import 'package:social/presentation/profile/widgets/profile_desc.dart';
import 'package:social/presentation/profile/widgets/profile_highlight.dart';
import 'package:social/presentation/profile/widgets/profile_tab.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _presenter = injector.get<LoginPresenter>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginPresenter, LoginState>(
      bloc: _presenter,
      buildWhen: (previous, current) =>
          previous.response != current.response ||
          previous.status != current.status,
      listener: (context, state) {},
      builder: (context, state) {
        final user = state.response?.content.user;

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back, color: Colors.black),
            ),
            centerTitle: true,
            title: Text(
              user!.nickName ?? '',
              style: const TextStyle(
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
                        controller.isOpen
                            ? controller.close()
                            : controller.open();
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
      },
    );
  }
}
