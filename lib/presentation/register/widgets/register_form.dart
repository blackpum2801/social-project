import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:social/core/routes/app_router.dart';
import 'package:social/presentation/common_widget/gradient_button.dart';
import 'package:social/presentation/common_widget/input_field.dart';

class RegisterForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final VoidCallback? onSubmit;
  final bool isLoading;

  const RegisterForm({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    this.onSubmit,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    bool showPassword = false;
    bool showConfirmPassword = false;

    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          children: [
            InputField(
              controller: nameController,
              hint: "Họ và tên",
              icon: Icons.person_outline,
            ),
            const SizedBox(height: 16),
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
            const SizedBox(height: 16),
            InputField(
              controller: confirmPasswordController,
              hint: "Xác nhận mật khẩu",
              icon: Icons.lock_outline,
              isPassword: true,
              isPasswordVisible: showConfirmPassword,
              onTogglePassword: () =>
                  setState(() => showConfirmPassword = !showConfirmPassword),
            ),
            const SizedBox(height: 24),
            GradientButton(
              text: isLoading ? "Đang xử lý..." : "Đăng ký",
              colors: [Colors.purple[600]!, Colors.pink[600]!],
              icon: Icons.arrow_forward,
              onPressed: isLoading ? null : onSubmit,
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () => context.router.replace(const LoginRoute()),
              child: const Text("Đã có tài khoản? Đăng nhập"),
            ),
          ],
        );
      },
    );
  }
}
