import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key, this.hintText = 'Tìm kiếm người dùng, bạn bè…'});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: scheme.primary.withValues(alpha: 0.12),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.arrow_back_rounded),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(28),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  offset: Offset(0, 2),
                  color: Colors.black12,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                hintText: hintText,
                prefixIcon: const Icon(Icons.search_rounded, size: 20),
                suffixIcon: const Padding(
                  padding: EdgeInsets.only(right: 4),
                  child: Icon(Icons.close_rounded, size: 18),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
