import 'package:flutter/material.dart';

class ForgotHeader extends StatelessWidget {
  const ForgotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Quên mật khẩu",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          "Nhập email để khôi phục mật khẩu",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
