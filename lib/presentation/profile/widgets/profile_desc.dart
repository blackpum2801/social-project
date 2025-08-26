import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/presentation/login/bloc/login_presenter.dart';
import 'package:social/presentation/login/bloc/login_state.dart';

class ProfileDesc extends StatelessWidget {
  ProfileDesc({super.key});
  final _presenter = injector.get<LoginPresenter>();

  final stats = const [
    {"number": "2.7K", "label": "Bài viết", "color": Colors.black},
    {"number": "28.8K", "label": "Người theo dõi", "color": Colors.blue},
    {"number": "2.7K", "label": "Đang theo dõi", "color": Colors.purple},
    {"number": "2.7K", "label": "Lượt thích", "color": Colors.pink},
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginPresenter, LoginState>(
      bloc: _presenter,
      builder: (context, state) {
        final user = state.response!.content.user;
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                user.intro ?? "Chưa có mô tả",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: stats.map((item) {
                  return Column(
                    children: [
                      Text(
                        item["number"] as String,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: item["color"] as Color,
                        ),
                      ),
                      Text(
                        item["label"] as String,
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
