import 'package:flutter/material.dart';
import 'package:social/data/models/response/posts/post_response.dart';
import 'package:social/presentation/home/widgets/home_postcard.dart';

class TimelineAnimations {
  final AnimationController controller;
  final Animation<double> lineAnimation;
  final Animation<double> circleScale;
  final Animation<Color?> circleColor;

  TimelineAnimations({
    required this.controller,
    required this.lineAnimation,
    required this.circleScale,
    required this.circleColor,
  });

  factory TimelineAnimations.create(TickerProvider vsync) {
    final controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: vsync,
    );

    final lineAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeInOut),
      ),
    );

    final circleScale = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.6, 1.0, curve: Curves.elasticOut),
      ),
    );

    final circleColor = ColorTween(begin: Colors.grey[300], end: Colors.blue)
        .animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.6, 1.0, curve: Curves.easeInOut),
          ),
        );

    return TimelineAnimations(
      controller: controller,
      lineAnimation: lineAnimation,
      circleScale: circleScale,
      circleColor: circleColor,
    );
  }
}

class TimelineIndicator extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final Animation<double> lineAnimation;
  final Animation<double> circleScale;
  final Animation<Color?> circleColor;

  const TimelineIndicator({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.lineAnimation,
    required this.circleScale,
    required this.circleColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: Column(
        children: [
          if (!isFirst)
            AnimatedBuilder(
              animation: lineAnimation,
              builder: (_, __) {
                return Container(
                  width: 2,
                  height: 20 * lineAnimation.value,
                  color: Colors.grey[300],
                );
              },
            ),
          AnimatedBuilder(
            animation: circleScale,
            builder: (_, __) {
              return Transform.scale(
                scale: circleScale.value,
                child: Container(
                  width: 5,
                  height: 5,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: circleColor.value,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: (circleColor.value ?? Colors.blue).withValues(
                          alpha: 0.3,
                        ),
                        spreadRadius: 2,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          if (!isLast)
            Expanded(
              child: AnimatedBuilder(
                animation: lineAnimation,
                builder: (_, __) {
                  return Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 2,
                      height: 100 * lineAnimation.value,
                      color: Colors.grey[300],
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

class PostsTimeline extends StatelessWidget {
  final List<PostContent> posts;

  const PostsTimeline({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return HomePostcard(
          post: posts[index],
          isFirst: index == 0,
          isLast: index == posts.length - 1,
        );
      },
    );
  }
}
