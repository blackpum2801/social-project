import 'package:flutter/material.dart';

class HomePostcard extends StatelessWidget {
  const HomePostcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage(
                            'assets/image/avatar.jpg',
                          ),
                          backgroundColor: Colors.grey,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: const Color(0xFF42B883),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Trần Hoàng Nam',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '1 giờ trước',
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.more_horiz, color: Colors.grey, size: 24),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Tuần này code xong project mới! Cảm ơn team đã support nhiệt tình',
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.4,
                    color: Color(0xFF1C1E21),
                  ),
                ),
              ),

              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 250,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage('assets/image/post.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                foregroundDecoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Color(0x4D000000)],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    SizedBox(
                      width: 44,
                      height: 20,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Color(0xFF1877F2),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.thumb_up,
                                size: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 12,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Color(0xFFF33E58),
                              child: Text('❤️', style: TextStyle(fontSize: 12)),
                            ),
                          ),
                          const Positioned(
                            left: 24,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Color(0xFFF7B125),
                              child: Text('😆', style: TextStyle(fontSize: 12)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '186',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    const Spacer(),
                    Text(
                      '28 bình luận',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    const SizedBox(width: 8),

                    Text(
                      '8 lượt chia sẻ',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const Divider(height: 1, color: Color(0xFFE4E6EA)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    _ActionButton(
                      icon: Icons.thumb_up_outlined,
                      label: 'Thích',
                    ),
                    _ActionButton(
                      icon: Icons.chat_bubble_outline,
                      label: 'Bình luận',
                    ),
                    _ActionButton(icon: Icons.share_outlined, label: 'Chia sẻ'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  const _ActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 20, color: Colors.grey),
              const SizedBox(width: 6),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
