import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> slide;
  final Animation<double> fade;

  const AnimatedText({
    super.key,
    required this.controller,
    required this.slide,
    required this.fade,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, __) {
        return Transform.translate(
          offset: Offset(0, slide.value),
          child: Opacity(
            opacity: fade.value,
            child: Column(
              children: [
                const Text(
                  'Social App',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Connect with friends',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
