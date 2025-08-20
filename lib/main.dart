import 'package:flutter/material.dart';
import 'package:social/core/routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Social App',
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
    );
  }
}
