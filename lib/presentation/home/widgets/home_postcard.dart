import 'package:flutter/material.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/data/models/response/posts/post_response.dart';
import 'package:social/presentation/home/home_comments_detail_page.dart';
import 'package:social/presentation/home/widgets/home_button.dart';
import 'package:social/presentation/home/widgets/home_timeline.dart';
import 'package:social/presentation/post/bloc/post_presenter.dart';
import 'package:timeago/timeago.dart' as timeago;

class HomePostcard extends StatefulWidget {
  final PostContent post;
  final bool isFirst;
  final bool isLast;

  const HomePostcard({
    super.key,
    required this.post,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  State<HomePostcard> createState() => _HomePostcardState();
}

class _HomePostcardState extends State<HomePostcard>
    with SingleTickerProviderStateMixin {
  final _postPresenter = injector.get<PostPresenter>();

  late TimelineAnimations animations;

  @override
  void initState() {
    super.initState();
    animations = TimelineAnimations.create(this);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) animations.controller.forward();
    });
  }

  @override
  void dispose() {
    animations.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TimelineIndicator(
              isFirst: widget.isFirst,
              isLast: widget.isLast,
              lineAnimation: animations.lineAnimation,
              circleScale: animations.circleScale,
              circleColor: animations.circleColor,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundImage: NetworkImage(
                              '${widget.post.userAvatar}',
                            ),
                            backgroundColor: Colors.grey,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.post.userName ?? '',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    timeago.format(
                                      DateTime.parse(
                                        widget.post.createdAt ?? "",
                                      ),
                                      locale: 'vi',
                                    ),
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.more_horiz,
                            color: Colors.grey,
                            size: 24,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    if (widget.post.contents.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          widget.post.contents,
                          style: const TextStyle(
                            fontSize: 15,
                            height: 1.4,
                            color: Color(0xFF1C1E21),
                          ),
                        ),
                      ),
                    const SizedBox(height: 12),
                    if (widget.post.images.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          width: double.infinity,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(widget.post.images.first),
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
                      ),

                    const SizedBox(height: 12),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Icon(Icons.thumb_up, size: 16, color: Colors.blue),
                          SizedBox(width: 8),
                          Text(
                            "${widget.post.totalLiked} lượt thích",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                          Spacer(),
                          Text(
                            "${widget.post.totalComment} bình luận",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "8 lượt chia sẻ",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),
                    const Divider(height: 1, color: Color(0xFFE4E6EA)),

                    Row(
                      children: [
                        ActionButton(
                          icon: widget.post.isLiked == 1
                              ? Icons.thumb_up
                              : Icons.thumb_up_outlined,
                          label: 'Thích',
                          isActive: widget.post.isLiked == 1,
                          onTap: () {
                            _postPresenter.likePost(widget.post.id);
                          },
                        ),
                        ActionButton(
                          icon: Icons.chat_bubble_outline,
                          label: 'Bình luận',
                          onTap: () {
                            HomeCommentDetail.show(context, widget.post);
                          },
                        ),
                        ActionButton(
                          icon: Icons.share_outlined,
                          label: 'Chia sẻ',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
