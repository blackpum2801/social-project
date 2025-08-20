import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:social/core/routes/app_router.dart';
import 'package:social/presentation/common_widget/gradient_button.dart';
import 'package:social/presentation/common_widget/input_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _showPassword = false;
  bool _showConfirmPassword = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputField(
          controller: _nameController,
          hint: "Họ và tên",
          icon: Icons.person_outline,
        ),
        const SizedBox(height: 16),
        InputField(
          controller: _emailController,
          hint: "Địa chỉ email",
          icon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        InputField(
          controller: _passwordController,
          hint: "Mật khẩu",
          icon: Icons.lock_outline,
          isPassword: true,
          isPasswordVisible: _showPassword,
          onTogglePassword: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
        ),
        const SizedBox(height: 16),
        InputField(
          controller: _confirmPasswordController,
          hint: "Xác nhận mật khẩu",
          icon: Icons.lock_outline,
          isPassword: true,
          isPasswordVisible: _showConfirmPassword,
          onTogglePassword: () {
            setState(() {
              _showConfirmPassword = !_showConfirmPassword;
            });
          },
        ),
        const SizedBox(height: 24),
        GradientButton(
          text: "Đăng ký",
          colors: [Colors.purple[600]!, Colors.pink[600]!],
          icon: Icons.arrow_forward,
          onPressed: () {},
        ),
        const SizedBox(height: 24),
        TextButton(
          onPressed: () => context.router.replace(const LoginRoute()),
          child: const Text("Đã có tài khoản? Đăng nhập"),
        ),
      ],
    );
  }
}
