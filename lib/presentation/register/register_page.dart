import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:social/presentation/register/widgets/register_form.dart';
import 'package:social/presentation/register/widgets/register_header.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            RegisterHeader(),
            SizedBox(height: 40),
            RegisterForm(),
          ],
        ),
      ),
    );
  }
}
