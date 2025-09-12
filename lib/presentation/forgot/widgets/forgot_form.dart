import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social/core/routes/app_router.dart';
import 'package:social/presentation/common_widget/gradient_button.dart';
import 'package:social/presentation/common_widget/input_field.dart';

class ForgotForm extends StatelessWidget {
  final TextEditingController emailController;
  final VoidCallback? onSubmit;
  final bool isLoading;

  const ForgotForm({
    super.key,
    required this.emailController,
    this.onSubmit,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          children: [
            InputField(
              controller: emailController,
              hint: "Địa chỉ email của bạn",
              icon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 24),
            GradientButton(
              text: isLoading ? "Đang xử lý..." : "Gửi link khôi phục",
              colors: [Colors.green[600]!, Colors.teal[600]!],
              icon: Icons.arrow_forward,
              onPressed: isLoading ? null : onSubmit,
            ),
            const SizedBox(height: 24),
            TextButton.icon(
              onPressed: () => context.router.replace(const LoginRoute()),
              icon: Icon(Icons.arrow_back, color: Colors.blue[600]),
              label: const Text("Quay lại đăng nhập"),
            ),
          ],
        );
      },
    );
  }
}
