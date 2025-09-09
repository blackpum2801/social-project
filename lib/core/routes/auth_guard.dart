import 'package:auto_route/auto_route.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/services/local_storage_service.dart';
import 'package:social/core/routes/app_router.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final token = await injector.get<LocalStorageService>().getToken();

    if (token != null && token.isNotEmpty) {
      resolver.next(true);
    } else {
      router.replace(const LoginRoute());
    }
  }
}
