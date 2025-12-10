part of 'router_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
    // HomeScreen is generated as HomeRoute because
    // of the replaceInRouteName property
    // AutoRoute(page: splash.page, path: "/", initial: true),
    AutoRoute(page: Splash.page, path: "/", initial: true),

    // AutoRoute(page: HomeRoute.page),
  ];
}
