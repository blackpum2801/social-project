import 'package:flutter/material.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Đăng ký",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          "Tạo tài khoản mới",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
