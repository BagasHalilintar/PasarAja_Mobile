import 'package:flutter/material.dart';
import 'package:pasaraja_mobile/config/routes/route_names.dart';
import 'package:pasaraja_mobile/feature/auth/presentation/pages/signin_google_page.dart';
import 'package:pasaraja_mobile/feature/auth/presentation/pages/welcome_page.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.defRoute:
        return _materialRoute(const WelcomePage());
      case RouteName.loginGoogle:
        return _materialRoute(const LoginGooglePage());
      default:
        return _materialRoute(const WelcomePage());
    }
  }

  static Route<dynamic> _materialRoute(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }
}
