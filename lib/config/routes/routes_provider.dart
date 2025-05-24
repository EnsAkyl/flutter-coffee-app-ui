import 'package:coffeeapp/config/config.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final routesProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RouteLocation.welcome,
    navigatorKey: navigationKey,
    routes: appRoutes,
  );
});
