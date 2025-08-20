import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social/core/routes/app_router.dart';

import 'package:social/presentation/common_widget/gradient_button.dart';
import 'package:social/presentation/common_widget/input_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _showPassword = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          text: "Đăng nhập",
          colors: [Colors.blue[600]!, Colors.purple[600]!],
          icon: Icons.arrow_forward,
          onPressed: () {},
        ),
        const SizedBox(height: 24),
        TextButton(
          onPressed: () => context.router.push(const RegisterRoute()),
          child: const Text("Chưa có tài khoản? Đăng ký ngay"),
        ),
      ],
    );
  }
}
