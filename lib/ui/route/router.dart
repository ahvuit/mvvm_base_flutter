import 'package:flutter/material.dart';
import 'package:mvvm_base/ui/route/route_paths.dart';
import 'package:mvvm_base/ui/views/hone/home_view.dart';
import 'package:mvvm_base/ui/views/splash/splash_view.dart';

class MainRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RoutePaths.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}.'),
            ),
          ),
        );
    }
  }
}
