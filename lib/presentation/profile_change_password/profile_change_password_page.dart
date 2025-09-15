import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/mixins/loading_mixin.dart';
import 'package:social/data/models/request/register/register_request.dart';
import 'package:social/presentation/common_widget/gradient_button.dart';
import 'package:social/presentation/profile_change/widgets/profile_change_field.dart';
import 'package:social/presentation/profile_change_password/bloc/profile_change_password_presenter.dart';
import 'package:social/presentation/profile_change_password/bloc/profile_change_password_state.dart';

@RoutePage()
class ProfileChangePasswordPage extends StatefulWidget {
  const ProfileChangePasswordPage({super.key});

  @override
  State<ProfileChangePasswordPage> createState() =>
      _ProfileChangePasswordPageState();
}

class _ProfileChangePasswordPageState extends State<ProfileChangePasswordPage>
    with LoadingMixin {
  final _formKey = GlobalKey<FormState>();
  final _presenter = injector.get<ProfileChangePasswordPresenter>();

  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    _presenter.close();
    super.dispose();
  }

  void _onSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      final request = RegisterRequest(
        oldPassword: _oldPasswordController.text.trim(),
        password: _newPasswordController.text.trim(),
        passwordConfirmation: _confirmPasswordController.text.trim(),
      );
      _presenter.changePassword(request);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Thay đổi mật khẩu')),
      body: SafeArea(
        child:
            BlocConsumer<
              ProfileChangePasswordPresenter,
              ProfileChangePasswordState
            >(
              bloc: _presenter,
              listener: (context, state) {
                if (state.status ==
                    ProfileChangePasswordStatus.submissionInProgress) {
                  showLoading();
                } else {
                  hideLoading();
                }

                if (state.status ==
                    ProfileChangePasswordStatus.submissionSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Đổi mật khẩu thành công")),
                  );
                  context.router.pop(); // quay lại trang trước
                } else if (state.status ==
                    ProfileChangePasswordStatus.submissionFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        state.errorMessage ?? "Đổi mật khẩu thất bại",
                      ),
                    ),
                  );
                }
              },
              buildWhen: (prev, curr) =>
                  prev.response != curr.response || prev.status != curr.status,
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: ListView(
                      children: [
                        ProfileInputField(
                          label: "Mật khẩu cũ",
                          icon: Icons.lock_outline,
                          controller: _oldPasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Vui lòng nhập mật khẩu cũ';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        ProfileInputField(
                          label: "Mật khẩu mới",
                          icon: Icons.lock,
                          controller: _newPasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Vui lòng nhập mật khẩu mới';
                            }
                            if (value.length < 6) {
                              return 'Mật khẩu phải có ít nhất 6 ký tự';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        ProfileInputField(
                          label: "Xác nhận mật khẩu mới",
                          icon: Icons.lock_reset,
                          controller: _confirmPasswordController,
                          validator: (value) {
                            if (value != _newPasswordController.text) {
                              return 'Mật khẩu xác nhận không khớp';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 24),
                        GradientButton(
                          text: "Cập nhật mật khẩu",

                          onPressed:
                              state.status ==
                                  ProfileChangePasswordStatus
                                      .submissionInProgress
                              ? null
                              : _onSubmit,
                          colors: const [Color(0xFF6C63FF), Color(0xFF9C88FF)],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      ),
    );
  }
}
