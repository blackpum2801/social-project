import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social/presentation/login/widgets/login_form.dart';
import 'package:social/presentation/login/widgets/login_header.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(28),
          children: const [LoginHeader(), SizedBox(height: 40), LoginForm()],
        ),
      ),
    );
  }
}
