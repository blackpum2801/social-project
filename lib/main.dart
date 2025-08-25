import 'package:flutter/material.dart';
import 'package:social/core/injector/app_modules.dart' show AppModules;
import 'package:social/core/routes/app_router.dart';
import 'package:social/presentation/login/bloc/login_module.dart';
import 'package:social/presentation/register/bloc/register_module.dart';

void main() async {
  await DependencyManager.inject();
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

class DependencyManager {
  static Future<void> inject() async {
    // App Flavor
    // injector.registerLazySingleton;
    await AppModules.inject();
    await RegisterModule.inject();
    await LoginModule.inject();
  }
}
