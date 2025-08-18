import 'package:flutter/material.dart';

class ProfileDesc extends StatelessWidget {
  const ProfileDesc({super.key});

  final stats = const [
    {"number": "2.7K", "label": "Bài viết", "color": Colors.black},
    {"number": "28.8K", "label": "Người theo dõi", "color": Colors.blue},
    {"number": "2.7K", "label": "Đang theo dõi", "color": Colors.purple},
    {"number": "2.7K", "label": "Lượt thích", "color": Colors.pink},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Nguyễn Văn A",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "Flutter Developer",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.blue[600],
            ),
          ),
          Text(
            "Khám phá vẻ đẹp của cuộc sống qua từng dòng code \nNhiếp ảnh | Du lịch | Công nghệ",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: stats.map((item) {
              return Column(
                children: [
                  Text(
                    item["number"] as String,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: item["color"] as Color,
                    ),
                  ),
                  Text(
                    item["label"] as String,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
