import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/mixins/loading_mixin.dart';
import 'package:social/data/models/request/forgot/forgot_request.dart';
import 'package:social/presentation/forgot/bloc/forgot_presenter.dart';
import 'package:social/presentation/forgot/bloc/forgot_state.dart';
import 'package:social/presentation/forgot/widgets/forgot_form.dart';
import 'package:social/presentation/forgot/widgets/forgot_header.dart';

@RoutePage()
class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> with LoadingMixin {
  final _presenter = injector.get<ForgotPresenter>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _presenter.close();
    super.dispose();
  }

  void _onSubmit() {
    final request = ForgotRequest(email: _emailController.text.trim());
    _presenter.forgot(request);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: BlocConsumer<ForgotPresenter, ForgotState>(
          bloc: _presenter,
          buildWhen: (prev, curr) =>
              prev.response != curr.response || prev.status != curr.status,
          listener: (context, state) {
            if (state.status == ForgotStatus.submissionInProgress) {
              showLoading();
            } else {
              hideLoading();
            }

            if (state.status == ForgotStatus.submissionSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.response?.message.first ?? "Gửi email thành công",
                  ),
                ),
              );
              // Nếu muốn tự động quay lại màn login thì thêm:
              // context.router.replace(const LoginRoute());
            } else if (state.status == ForgotStatus.submissionFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage ?? "Có lỗi xảy ra")),
              );
            }
          },
          builder: (context, state) {
            return ListView(
              padding: const EdgeInsets.all(28),
              children: [
                const ForgotHeader(),
                const SizedBox(height: 40),
                ForgotForm(
                  emailController: _emailController,
                  isLoading: state.status == ForgotStatus.submissionInProgress,
                  onSubmit: _onSubmit,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
