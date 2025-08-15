import 'package:flutter/material.dart';

class PostInputText extends StatelessWidget {
  const PostInputText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const TextField(
          maxLength: 2000,
          maxLines: null,
          decoration: InputDecoration(
            hintText: 'Bạn đang nghĩ gì?',
            hintStyle: TextStyle(fontSize: 18, color: Colors.black38),
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            counterText: '',
          ),
          style: TextStyle(fontSize: 18),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          child: Text(
            '0/2000',
            style: TextStyle(fontSize: 12, color: Colors.black45),
          ),
        ),
      ],
    );
  }
}
