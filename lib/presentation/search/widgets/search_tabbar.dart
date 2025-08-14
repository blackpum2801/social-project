import 'package:flutter/material.dart';

class SearchTabbar extends StatelessWidget {
  const SearchTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20,
              offset: Offset(0, 10),
              color: Color(0x14000000),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const LinearGradient(
                  colors: [Color(0xFF7B61FF), Color(0xFF6A39FF)],
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 16,
                    offset: Offset(0, 8),
                    color: Color(0x1A000000),
                  ),
                ],
              ),
              child: const Row(
                children: [
                  Icon(Icons.person_rounded, size: 18, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'Người dùng',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            // Tab phải: INACTIVE
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Icon(Icons.article_outlined, size: 18, color: cs.primary),
                  const SizedBox(width: 8),
                  Text(
                    'Bài viết',
                    style: TextStyle(
                      color: cs.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
