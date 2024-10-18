import 'package:app_router_example/view/home/view/home_view.dart';
import 'package:app_router_example/view/page1/test_view.dart';
import 'package:app_router_example/view/settings/view/setting_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          // path: RoutePath.home.value,
          children: [
            /// Test Tab
            AutoRoute(
              page: TestTab.page,
              initial: true,
              children: [
                AutoRoute(
                  path: '',
                  page: TestRoute.page,
                ),
                AutoRoute(
                  page: DemoRoute.page,
                )
              ],
            ),

            /// Settings Tab
            AutoRoute(
              page: SettingRoute.page,
              // path: RoutePath.settings.value,
            )
          ],
        ),
        AutoRoute(page: TestTab.page, path: '/login'),
      ];
}

// enum RoutePath {
//   home('/'),
//   settings('/settings');

//   final String value;

//   const RoutePath(this.value);
// }

const TestTab = EmptyShellRoute('TestTab');
const ProfileTab = EmptyShellRoute('ProfileTab');
