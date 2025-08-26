import 'package:auto_route/auto_route.dart';
import 'package:social/core/routes/dashboard.dart';
import 'package:social/presentation/chat/chat_page.dart';
import 'package:social/presentation/forgot/forgot_page.dart';
import 'package:social/presentation/home/home_page.dart';
import 'package:social/presentation/login/login_page.dart';
import 'package:social/presentation/post/post_page.dart';
import 'package:social/presentation/profile/profile_page.dart';
import 'package:social/presentation/register/register_page.dart';
import 'package:social/presentation/search/search_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: DashboardRoute.page,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: PostRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: ForgotRoute.page),
  ];
}
