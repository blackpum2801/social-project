import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/mixins/loading_mixin.dart';
import 'package:social/data/models/request/posts/create_post_request.dart';
import 'package:social/presentation/post/bloc/post_presenter.dart';
import 'package:social/presentation/post/bloc/post_state.dart';
import 'package:social/presentation/post/widgets/post_actions.dart';
import 'package:social/presentation/post/widgets/post_header.dart';
import 'package:social/presentation/post/widgets/post_input_text.dart';

@RoutePage()
class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> with LoadingMixin {
  final _presenter = injector.get<PostPresenter>();
  final _contentController = TextEditingController();

  @override
  void dispose() {
    _contentController.dispose();
    _presenter.close();
    super.dispose();
  }

  void _onSubmit() {
    final request = CreatePostRequest(
      contents: _contentController.text.trim(),
      images: [],
    );
    _presenter.createPost(request.contents);
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.router.pop(),
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: const Text('Create Post'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: BlocConsumer<PostPresenter, PostState>(
              bloc: _presenter,
              listener: (context, state) {
                if (state.status == PostStatus.submissionInProgress) {
                  showLoading();
                } else {
                  hideLoading();
                }

                if (state.status == PostStatus.submissionSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Đăng bài thành công")),
                  );
                  _contentController.clear();
                  final tabsRouter = AutoTabsRouter.of(context);
                  tabsRouter.setActiveIndex(0);
                } else if (state.status == PostStatus.submissionFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.errorMessage ?? "Đăng bài thất bại"),
                    ),
                  );
                }
              },
              buildWhen: (prev, curr) =>
                  prev.response != curr.response || prev.status != curr.status,
              builder: (context, state) {
                final isLoading =
                    state.status == PostStatus.submissionInProgress;
                return GestureDetector(
                  onTap: isLoading ? null : _onSubmit,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: isLoading
                          ? cs.outlineVariant.withValues(alpha: 0.5)
                          : cs.primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: isLoading
                        ? const SizedBox(
                            height: 18,
                            width: 18,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          )
                        : const Text(
                            'Upload',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const PostHeader(),
            const SizedBox(height: 8),
            PostInputText(controller: _contentController),
            const SizedBox(height: 8),
            const PostActions(),
          ],
        ),
      ),
    );
  }
}
