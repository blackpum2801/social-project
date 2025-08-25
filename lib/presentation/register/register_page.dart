import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/mixins/loading_mixin.dart';
import 'package:social/data/models/request/register_request.dart';

import 'package:social/presentation/register/bloc/register_presenter.dart';
import 'package:social/presentation/register/bloc/register_state.dart';
import 'package:social/presentation/register/widgets/register_form.dart';
import 'package:social/presentation/register/widgets/register_header.dart';
import 'package:social/core/routes/app_router.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with LoadingMixin {
  final _presenter = injector.get<RegisterPresenter>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _presenter.close();
    super.dispose();
  }

  void _onSubmit() {
    final request = RegisterRequest(
      name: _nameController.text.trim(),
      email: _emailController.text.trim(),
      password: _passwordController.text,
      passwordConfirmation: _confirmPasswordController.text,
    );
    _presenter.register(request);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: BlocConsumer<RegisterPresenter, RegisterState>(
          bloc: _presenter,
          listener: (context, state) {
            if (state.status == RegisterStatus.submissionInProgress) {
              showLoading();
            } else {
              hideLoading();
            }

            if (state.status == RegisterStatus.submissionSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Đăng ký thành công")),
              );
              context.router.replace(const LoginRoute());
            } else if (state.status == RegisterStatus.submissionFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage ?? "Đăng ký thất bại"),
                ),
              );
            }
          },
          buildWhen: (prev, curr) =>
              prev.response != curr.response || prev.status != curr.status,

          builder: (context, state) {
            return ListView(
              padding: const EdgeInsets.all(28),
              children: [
                const RegisterHeader(),
                const SizedBox(height: 40),
                RegisterForm(
                  nameController: _nameController,
                  emailController: _emailController,
                  passwordController: _passwordController,
                  confirmPasswordController: _confirmPasswordController,
                  onSubmit: _onSubmit,
                  isLoading:
                      state.status == RegisterStatus.submissionInProgress,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
