import 'package:coffeeapp/config/config.dart';
import 'package:coffeeapp/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final navigationKey = GlobalKey<NavigatorState>();

final appRoutes = [
  GoRoute(
    path: RouteLocation.welcome,
    parentNavigatorKey: navigationKey,
    builder: WelcomePage.builder,
  ),
  GoRoute(
    path: RouteLocation.signIn,
    parentNavigatorKey: navigationKey,
    builder: SignInPage.builder,
  ),
  GoRoute(
    path: RouteLocation.signUp,
    parentNavigatorKey: navigationKey,
    builder: SignUpPage.builder,
  ),
];
