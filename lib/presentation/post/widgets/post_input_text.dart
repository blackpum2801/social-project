import 'package:flutter/material.dart';

class PostInputText extends StatelessWidget {
  const PostInputText({super.key});

  static const _maxLen = 2000;

  @override
  Widget build(BuildContext context) {
    const content = '';
    return Stack(
      children: [
        const TextField(
          maxLength: _maxLen,
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
            '${content.length}/$_maxLen',
            style: TextStyle(fontSize: 12, color: Colors.black45),
          ),
        ),
      ],
    );
  }
}
