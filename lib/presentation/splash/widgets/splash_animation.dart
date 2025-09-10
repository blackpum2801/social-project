import 'package:flutter/material.dart';

class SplashAnimations {
  late final AnimationController logoController;
  late final AnimationController textController;
  late final AnimationController fadeController;

  late final Animation<double> logoScale;
  late final Animation<double> logoRotation;
  late final Animation<double> textSlide;
  late final Animation<double> textFade;
  late final Animation<double> backgroundFade;

  SplashAnimations(TickerProvider vsync) {
    logoController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: vsync,
    );
    textController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: vsync,
    );
    fadeController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: vsync,
    );

    logoScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: logoController, curve: Curves.elasticOut),
    );

    logoRotation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: logoController, curve: Curves.easeInOut));

    textSlide = Tween<double>(begin: 50.0, end: 0.0).animate(
      CurvedAnimation(parent: textController, curve: Curves.easeOutCubic),
    );

    textFade = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: textController, curve: Curves.easeIn));

    backgroundFade = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: fadeController, curve: Curves.easeIn));
  }

  void start() {
    fadeController.forward();

    Future.delayed(const Duration(milliseconds: 300), () {
      logoController.forward();
    });

    Future.delayed(const Duration(milliseconds: 800), () {
      textController.forward();
    });
  }

  void dispose() {
    logoController.dispose();
    textController.dispose();
    fadeController.dispose();
  }
}
