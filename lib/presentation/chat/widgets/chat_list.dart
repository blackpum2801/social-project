import 'package:flutter/material.dart';
import 'package:social/presentation/chat/widgets/chat_detail.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> conversations = [
      {
        "name": "Nguyễn Thị Mai",
        "message": "Hôm nay bạn có rảnh không?",
        "time": "2 phút",
        "avatar": "https://i.pravatar.cc/150?img=1",
        "unread": 2,
      },
      {
        "name": "Trần Văn Hưng",
        "message": "Cảm ơn bạn đã chia sẻ!",
        "time": "15 phút",
        "avatar": "https://i.pravatar.cc/150?img=2",
        "unread": 0,
      },
      {
        "name": "Lê Thị Hoa",
        "message": "Bạn đã xem bài viết mới chưa?",
        "time": "1 giờ",
        "avatar": "https://i.pravatar.cc/150?img=3",
        "unread": 1,
      },
    ];

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: conversations.length,
            itemBuilder: (context, index) {
              final conv = conversations[index];
              return ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatDetailScreen(userName: conv["name"]),
                    ),
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(conv["avatar"]),
                ),
                title: Text(
                  conv["name"],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(conv["message"]),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(conv["time"], style: const TextStyle(fontSize: 12)),
                    if (conv["unread"] > 0)
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          "${conv["unread"]}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
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
