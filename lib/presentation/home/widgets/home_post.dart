import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePost extends StatelessWidget {
  const HomePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: const AssetImage('assets/icons/social-icon.png'),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(36),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "What's on your mind, Dang",
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 8,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 12),

          SvgPicture.asset('assets/icons/gallery.svg', width: 36, height: 36),
        ],
      ),
    );
  }
}
