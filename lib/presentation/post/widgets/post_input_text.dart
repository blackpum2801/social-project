import 'package:flutter/material.dart';

class PostInputText extends StatelessWidget {
  final TextEditingController controller;

  const PostInputText({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: controller,
      builder: (context, value, _) {
        final currentLength = value.text.length;
        return Stack(
          children: [
            Container(
              constraints: const BoxConstraints(minHeight: 100, maxHeight: 350),
              child: Scrollbar(
                controller: scrollController,
                thumbVisibility: true,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: TextField(
                    controller: controller,
                    maxLength: 2000,
                    maxLines: null,
                    decoration: const InputDecoration(
                      hintText: 'Bạn đang nghĩ gì?',
                      hintStyle: TextStyle(fontSize: 18, color: Colors.black38),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      counterText: '',
                    ),
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Text(
                '$currentLength/2000',
                style: const TextStyle(fontSize: 12, color: Colors.black45),
              ),
            ),
          ],
        );
      },
    );
  }
}
