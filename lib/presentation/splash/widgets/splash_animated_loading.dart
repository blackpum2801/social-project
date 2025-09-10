import 'package:flutter/material.dart';

class AnimatedLoading extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> fade;

  const AnimatedLoading({
    super.key,
    required this.controller,
    required this.fade,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, __) {
        return Opacity(
          opacity: fade.value,
          child: const SizedBox(
            width: 30,
            height: 30,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              strokeWidth: 3,
            ),
          ),
        );
      },
    );
  }
}
