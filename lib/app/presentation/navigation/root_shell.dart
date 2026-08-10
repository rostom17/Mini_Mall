import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'adaptive_nav_scaffold.dart';
import 'app_destinations.dart';

class RootShell extends StatelessWidget {
  const RootShell({super.key, required this._navigationShell});

  final StatefulNavigationShell _navigationShell;

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavScaffold(
      selectedIndex: _navigationShell.currentIndex,
      onDestinationSelected: (index) => _navigationShell.goBranch(
        index,
        initialLocation: index == _navigationShell.currentIndex,
      ),
      destinations: AppDestinations.destinations,
      body: _navigationShell,
    );
  }
}
