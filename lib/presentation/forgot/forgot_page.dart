import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:social/presentation/forgot/widgets/forgot_form.dart';
import 'package:social/presentation/forgot/widgets/forgot_header.dart';

@RoutePage()
class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(28),
          children: const [ForgotHeader(), SizedBox(height: 40), ForgotForm()],
        ),
      ),
    );
  }
}
