import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mall/app/presentation/navigation/root_shell.dart';

import 'route_names.dart';

final _shellNavigatorKey = GlobalKey<StatefulNavigationShellState>(
  debugLabel: 'shell',
);

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RoutePaths.home,
    errorBuilder: (context, state) {
      return Container(color: Colors.red);
    },
    routes: [
      StatefulShellRoute.indexedStack(
        key: _shellNavigatorKey,
        builder: (context, state, navigationShell) =>
            RootShell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutePaths.home,
                name: RouteNames.home,
                pageBuilder: (context, state) =>
                    MaterialPage(child: Container(color: Colors.amber)),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutePaths.cart,
                name: RouteNames.cart,
                pageBuilder: (context, state) => MaterialPage(
                  child: Container(color: Colors.deepOrangeAccent),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutePaths.profile,
                name: RouteNames.profile,
                pageBuilder: (context, state) =>
                    MaterialPage(child: Container(color: Colors.deepPurple)),
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
