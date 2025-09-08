import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/mixins/loading_mixin.dart';
import 'package:social/core/mixins/snackbar_mixin.dart';
import 'package:social/data/models/response/profile/profile_response.dart';
import 'package:social/presentation/common_widget/gradient_button.dart';
import 'package:social/presentation/profile/bloc/profile_presenter.dart';
import 'package:social/presentation/profile_change/bloc/profile_change_presenter.dart';
import 'package:social/presentation/profile_change/bloc/profile_change_state.dart';
import 'package:social/presentation/profile_change/widgets/profile_change_field.dart';
import 'package:social/presentation/profile_change/widgets/profile_change_title.dart';

@RoutePage()
class ProfileEditPage extends StatefulWidget {
  final ProfileResponse? profileResponse;
  final ProfilePresenter? profilePresenter;
  const ProfileEditPage({
    super.key,
    this.profileResponse,
    this.profilePresenter,
  });
  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage>
    with TickerProviderStateMixin, LoadingMixin, SnackbarMixin {
  final _formKey = GlobalKey<FormState>();
  final _profileChangePresenter = injector.get<ProfileChangePresenter>();
  late final ProfilePresenter _profilePresenter;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _profilePresenter =
        widget.profilePresenter ?? injector.get<ProfilePresenter>();
    _profileChangePresenter.syncFromProfileResponse(widget.profileResponse);

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeOutCubic,
          ),
        );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () => context.router.pop(),
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black87,
            ),
          ),
        ),
      ),
      body: BlocConsumer<ProfileChangePresenter, ProfileChangeState>(
        bloc: _profileChangePresenter,
        listenWhen: (prev, curr) =>
            prev.response != curr.response || prev.status != curr.status,
        listener: (context, state) {
          if (state.status == ProfileChangeStatus.submissionInProgress) {
            showLoading();
          } else {
            hideLoading();
          }
          if (state.status == ProfileChangeStatus.submissionSuccess) {
            _profilePresenter.getProfile();
            showSuccessSnackBar("Cập nhật thông tin thành công!");
            context.router.pop();
          }

          if (state.status == ProfileChangeStatus.submissionFailure) {
            showErrorSnackBar(state.errorMessage ?? "Có lỗi xảy ra");
          }
        },
        builder: (context, state) {
          final user = state.response?.content;
          final isLoading =
              state.status == ProfileChangeStatus.submissionInProgress;
          return FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      ProfileChangeTitle(
                        title: "Thông tin cơ bản",
                        icon: Icons.person_rounded,
                        children: [
                          ProfileInputField(
                            label: 'Tên người dùng',
                            icon: Icons.person_outline_rounded,
                            initialValue: user?.name ?? '',
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return "Tên người dùng là bắt buộc";
                              }
                              return null;
                            },
                            onChanged: (val) =>
                                _profileChangePresenter.updateName(val),
                          ),
                          const SizedBox(height: 16),
                          ProfileInputField(
                            label: 'Biệt danh',
                            icon: Icons.badge_rounded,
                            initialValue: user?.nickName ?? '',
                            onChanged: (val) =>
                                _profileChangePresenter.updateNickName(val),
                          ),
                        ],
                      ),
                      ProfileChangeTitle(
                        title: "Thông tin liên hệ",
                        icon: Icons.contact_phone_rounded,
                        children: [
                          ProfileInputField(
                            label: 'Số điện thoại',
                            icon: Icons.phone_rounded,
                            keyboardType: TextInputType.phone,
                            initialValue: user?.phoneNumber ?? '',
                            onChanged: (val) =>
                                _profileChangePresenter.updatePhone(val),
                          ),
                        ],
                      ),
                      ProfileChangeTitle(
                        title: "Thông tin cá nhân",
                        icon: Icons.info_rounded,
                        children: [
                          DateSelectorField(
                            label: 'Ngày sinh',
                            selectedDate: _profileChangePresenter.parseDate(
                              user?.dateOfBirth,
                            ),
                            onTap: () async {
                              final picked = await showDatePicker(
                                context: context,
                                initialDate:
                                    _profileChangePresenter.parseDate(
                                      user?.dateOfBirth,
                                    ) ??
                                    DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now(),
                                builder: (context, child) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                      colorScheme: Theme.of(context).colorScheme
                                          .copyWith(
                                            primary: const Color(0xFF6C63FF),
                                            onPrimary: Colors.white,
                                            surface: Colors.white,
                                          ),
                                      dialogTheme: Theme.of(context).dialogTheme
                                          .copyWith(
                                            backgroundColor: Colors.white,
                                          ),
                                    ),
                                    child: child!,
                                  );
                                },
                              );
                              if (picked != null) {
                                _profileChangePresenter.updateDateOfBirth(
                                  picked,
                                );
                              }
                            },
                          ),
                          const SizedBox(height: 16),
                          GenderSelectorField(
                            selectedGender:
                                user?.gender?.toLowerCase() ?? 'nam',
                            onChanged: (val) => _profileChangePresenter
                                .updateGender(val ?? 'nam'),
                          ),
                          const SizedBox(height: 16),
                          ProfileInputField(
                            label: 'Giới thiệu bản thân',
                            icon: Icons.info_outline_rounded,
                            maxLines: 4,
                            initialValue: user?.intro ?? '',
                            onChanged: (val) =>
                                _profileChangePresenter.updateIntro(val),
                          ),
                        ],
                      ),

                      const SizedBox(height: 32),
                      GradientButton(
                        text: isLoading ? "Đang lưu..." : "Lưu thay đổi",
                        icon: isLoading ? null : Icons.save_rounded,
                        colors: isLoading
                            ? [Colors.grey.shade400, Colors.grey.shade500]
                            : const [Color(0xFF6C63FF), Color(0xFF9C88FF)],
                        onPressed: isLoading
                            ? null
                            : () => _profileChangePresenter.saveProfile(),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
