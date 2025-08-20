import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:social/core/routes/app_router.dart';
import 'package:social/presentation/common_widget/gradient_button.dart';
import 'package:social/presentation/common_widget/input_field.dart';

class ForgotForm extends StatefulWidget {
  const ForgotForm({super.key});

  @override
  State<ForgotForm> createState() => _ForgotFormState();
}

class _ForgotFormState extends State<ForgotForm> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputField(
          controller: _emailController,
          hint: "Địa chỉ email của bạn",
          icon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 24),
        GradientButton(
          text: "Gửi link khôi phục",
          colors: [Colors.green[600]!, Colors.teal[600]!],
          icon: Icons.arrow_forward,
          onPressed: () {},
        ),
        const SizedBox(height: 24),
        TextButton.icon(
          onPressed: () => context.router.replace(const LoginRoute()),
          icon: Icon(Icons.arrow_back, color: Colors.blue[600]),
          label: const Text("Quay lại đăng nhập"),
        ),
      ],
    );
  }
}
