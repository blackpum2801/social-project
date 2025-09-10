import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/routes/app_router.dart';
import 'package:social/core/services/local_storage_service.dart';
import 'package:social/presentation/splash/bloc/splash_presenter.dart';
import 'package:social/presentation/splash/widgets/splash_animated_loading.dart';
import 'package:social/presentation/splash/widgets/splash_animated_logo.dart';
import 'package:social/presentation/splash/widgets/splash_animated_text.dart';
import 'package:social/presentation/splash/widgets/splash_animation.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late SplashPresenter _presenter;
  late SplashAnimations _animations;

  @override
  void initState() {
    super.initState();
    _presenter = SplashPresenter(injector.get<LocalStorageService>());
    _animations = SplashAnimations(this);

    _animations.start();
    _handleAuthFlow();
  }

  Future<void> _handleAuthFlow() async {
    await Future.delayed(const Duration(milliseconds: 2500));
    final isAuth = await _presenter.checkAuth();

    if (!mounted) return;

    if (isAuth) {
      context.router.replace(const DashboardRoute());
    } else {
      context.router.replace(const LoginRoute());
    }
  }

  @override
  void dispose() {
    _animations.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animations.fadeController,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue.shade600.withValues(
                    alpha: _animations.backgroundFade.value,
                  ),
                  Colors.purple.shade600.withValues(
                    alpha: _animations.backgroundFade.value,
                  ),
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedLogo(
                    controller: _animations.logoController,
                    scale: _animations.logoScale,
                    rotation: _animations.logoRotation,
                  ),
                  const SizedBox(height: 30),
                  AnimatedText(
                    controller: _animations.textController,
                    slide: _animations.textSlide,
                    fade: _animations.textFade,
                  ),
                  const SizedBox(height: 60),
                  AnimatedLoading(
                    controller: _animations.textController,
                    fade: _animations.textFade,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
