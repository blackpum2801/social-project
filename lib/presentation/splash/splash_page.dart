import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/services/local_storage_service.dart';
import 'package:social/core/routes/app_router.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkAuth();
  }

  Future<void> _checkAuth() async {
    final localStorage = injector.get<LocalStorageService>();
    final token = await localStorage.getToken();
    final valid = await localStorage.isTokenValid();

    if (token != null && token.isNotEmpty && valid) {
      context.router.replace(const DashboardRoute());
    } else {
      await localStorage.clearToken();
      context.router.replace(const LoginRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
