import 'package:flutter/material.dart';

class HomeStories extends StatelessWidget {
  const HomeStories({super.key});

  @override
  Widget build(BuildContext context) {
    const double avatarRadius = 36.0;
    const double labelWidth = 80.0;
    const Color ringColor = Color(0xFF5E6AD2);

    final names = [
      'Anna',
      'David',
      'Sarah',
      'Mike',
      'Lisa',
      'John',
      'Emma',
      'Noah',
    ];

    final colors = <Color>[
      const Color(0xFFF857A6),
      const Color(0xFF00C6FF),
      const Color(0xFFB06AB3),
      const Color(0xFF00F260),
      const Color(0xFFFF8008),
      const Color(0xFF7F5CFF),
      const Color(0xFF4FC3FF),
      const Color(0xFF57C785),
    ];

    return SizedBox(
      // +65 to avoid overflow
      height: avatarRadius * 2 + 65,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        scrollDirection: Axis.horizontal,
        itemCount: names.length + 1,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      width: avatarRadius * 2,
                      height: avatarRadius * 2,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: ringColor, width: 2),
                        ),
                        child: const Center(
                          child: Icon(Icons.add, size: 32, color: ringColor),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -6,
                      right: 6,
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: ringColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: labelWidth,
                  child: Text(
                    'Story',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            );
          }

          final name = names[index - 1];
          final color = colors[(index - 1) % colors.length];

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: avatarRadius,
                backgroundColor: color,
                child: Text(
                  name.isNotEmpty ? name.substring(0, 1) : '?',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.black.withValues(alpha: 0.8),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: labelWidth,
                child: Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
