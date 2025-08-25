import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social/core/routes/app_router.dart';

import 'package:social/presentation/common_widget/gradient_button.dart';
import 'package:social/presentation/common_widget/input_field.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback? onSubmit;
  final bool isLoading;

  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    this.onSubmit,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    bool showPassword = false;

    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          children: [
            InputField(
              controller: emailController,
              hint: "Địa chỉ email",
              icon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            InputField(
              controller: passwordController,
              hint: "Mật khẩu",
              icon: Icons.lock_outline,
              isPassword: true,
              isPasswordVisible: showPassword,
              onTogglePassword: () =>
                  setState(() => showPassword = !showPassword),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                      activeColor: Colors.blue[600],
                    ),
                    const Text(
                      "Ghi nhớ đăng nhập",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () => context.router.push(const ForgotRoute()),
                  child: Text(
                    "Quên mật khẩu?",
                    style: TextStyle(color: Colors.blue[600], fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            GradientButton(
              text: isLoading ? "Đang xử lý..." : "Đăng nhập",
              colors: [Colors.blue[600]!, Colors.purple[600]!],
              icon: Icons.arrow_forward,
              onPressed: isLoading ? null : onSubmit,
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () => context.router.replace(const RegisterRoute()),
              child: const Text("Chưa có tài khoản? Đăng ký ngay"),
            ),
          ],
        );
      },
    );
  }
}
