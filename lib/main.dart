import 'package:flutter/material.dart';
import 'package:social/core/injector/app_modules.dart' show AppModules;
import 'package:social/core/routes/app_router.dart';
import 'package:social/presentation/forgot/bloc/forgot_module.dart';
import 'package:social/presentation/login/bloc/login_module.dart';
import 'package:social/presentation/post/bloc/post_module.dart';
import 'package:social/presentation/profile/bloc/profile_module.dart';
import 'package:social/presentation/profile_change/bloc/profile_change_module.dart';
import 'package:social/presentation/profile_change_password/bloc/profile_change_password_module.dart';
import 'package:social/presentation/register/bloc/register_module.dart';
import 'package:timeago/timeago.dart' as timeago;

void main() async {
  timeago.setLocaleMessages('vi', timeago.ViMessages());
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
    await ProfileModule.inject();
    await ProfileChangeModule.inject();
    await ForgotModule.inject();
    await ProfileChangePasswordModule.inject();
    await PostModule.inject();
  }
}
