import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/mixins/loading_mixin.dart';
import 'package:social/data/models/request/login/login_request.dart';
import 'package:social/presentation/login/bloc/login_presenter.dart';
import 'package:social/presentation/login/bloc/login_state.dart';
import 'package:social/presentation/login/widgets/login_form.dart';
import 'package:social/presentation/login/widgets/login_header.dart';
import 'package:social/core/routes/app_router.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoadingMixin {
  final _presenter = injector.get<LoginPresenter>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _presenter.close();
    super.dispose();
  }

  void _onSubmit() {
    final request = LoginRequest(
      email: _emailController.text.trim(),
      password: _passwordController.text,
    );
    _presenter.login(request);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: BlocConsumer<LoginPresenter, LoginState>(
          bloc: _presenter,
          listener: (context, state) {
            if (state.status == LoginStatus.submissionInProgress) {
              showLoading();
            } else {
              hideLoading();
            }

            if (state.status == LoginStatus.submissionSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Đăng nhập thành công")),
              );
              context.router.replace(const HomeRoute());
            } else if (state.status == LoginStatus.submissionFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage ?? "Đăng nhập thất bại"),
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
                const LoginHeader(),
                const SizedBox(height: 40),
                LoginForm(
                  emailController: _emailController,
                  passwordController: _passwordController,
                  onSubmit: _onSubmit,
                  isLoading: state.status == LoginStatus.submissionInProgress,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
