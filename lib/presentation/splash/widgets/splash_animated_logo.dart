import 'package:flutter/material.dart';

class AnimatedLogo extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> scale;
  final Animation<double> rotation;

  const AnimatedLogo({
    super.key,
    required this.controller,
    required this.scale,
    required this.rotation,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, __) {
        return Transform.scale(
          scale: scale.value,
          child: Transform.rotate(
            angle: rotation.value * 0.5,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/icons/social-icon.png',
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      const Icon(Icons.groups, size: 60, color: Colors.blue),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
