import 'package:flutter/material.dart';

class SearchFriendSuggestionCard extends StatelessWidget {
  const SearchFriendSuggestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    final friends = [
      {
        'name': 'Ngô Huỳnh Thanh Thuý',
        'subtitle': 'Trường Đại học Kinh tế - Đại học Đà…',
        'image':
            'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGF2YXRhcnxlbnwwfHwwfHx8MA%3D%3D',
      },
      {
        'name': 'Trần Thanh A',
        'subtitle': 'Đại học Quốc gia TP.HCM',
        'image':
            'https://images.unsplash.com/photo-1654110455429-cf322b40a906?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      },
      {
        'name': 'Nguyễn Văn B',
        'subtitle': 'Học viện Công nghệ Bưu chính Viễn thông',
        'image':
            'https://images.unsplash.com/photo-1681163710602-285d00c5e199?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      },
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Những người bạn có thể biết",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 400,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: friends.length,
              separatorBuilder: (_, __) => const SizedBox(width: 10),
              itemBuilder: (context, i) {
                final f = friends[i];
                return Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFFE6E6E6)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 16 / 14,
                        child: f['image'] == null
                            ? Container(color: const Color(0xFFE9ECF3))
                            : Image.network(
                                f['image'] as String,
                                fit: BoxFit.cover,
                              ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              f['name'] as String,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              f['subtitle'] as String,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Color(0xFF8F8D8D),
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 40,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: const Color(
                                          0xFF1778F2,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        'Thêm bạn bè',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: SizedBox(
                                    height: 40,
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        side: const BorderSide(
                                          color: Color(0xFF7B7272),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        'Gỡ/Xóa',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
