import 'package:flutter/material.dart';

class ProfileHighlights extends StatelessWidget {
  final highlights = const [
    {"icon": Icons.add, "label": "Mới", "color": Colors.grey},
    {"icon": Icons.event, "label": "Sự kiện", "color": Colors.pink},
    {"icon": Icons.flight_takeoff, "label": "Du lịch", "color": Colors.blue},
    {"icon": Icons.restaurant, "label": "Ẩm thực", "color": Colors.orange},
    {"icon": Icons.music_note, "label": "Cờ r", "color": Colors.purple},
  ];
  const ProfileHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Text(
            "Highlights",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: highlights.length,
            separatorBuilder: (_, __) => const SizedBox(width: 24),
            itemBuilder: (context, index) {
              final item = highlights[index];
              return InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        gradient: index == 0
                            ? null
                            : LinearGradient(
                                colors: [
                                  (item["color"] as Color).withValues(
                                    alpha: 0.7,
                                  ),
                                  item["color"] as Color,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                        color: index == 0 ? Colors.grey[200] : null,
                        borderRadius: BorderRadius.circular(20),
                        border: index == 0
                            ? Border.all(color: Colors.grey)
                            : null,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            blurRadius: 6,
                            offset: const Offset(2, 4),
                          ),
                        ],
                      ),
                      child: Icon(
                        item["icon"] as IconData,
                        size: 28,
                        color: index == 0 ? Colors.grey[600] : Colors.white,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      item["label"] as String,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
