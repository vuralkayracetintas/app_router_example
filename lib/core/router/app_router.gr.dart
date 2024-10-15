// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeView();
    },
  );
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<SettingRouteArgs> {
  SettingRoute({
    required String title,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SettingRoute.name,
          args: SettingRouteArgs(
            title: title,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SettingRouteArgs>();
      return SettingPage(
        title: args.title,
        key: args.key,
      );
    },
  );
}

class SettingRouteArgs {
  const SettingRouteArgs({
    required this.title,
    this.key,
  });

  final String title;

  final Key? key;

  @override
  String toString() {
    return 'SettingRouteArgs{title: $title, key: $key}';
  }
}
