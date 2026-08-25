import 'package:flutter/material.dart';

import '/core/responsive/max_width_box.dart';
import '/core/responsive/responsive_builder.dart';
import 'nav_destination.dart';

class AdaptiveNavScaffold extends StatelessWidget {
  const AdaptiveNavScaffold({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.destinations,
    required this.body,
    this.appbar,
    this.floatingActionButton,
  });

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final List<NavDestination> destinations;
  final Widget body;
  final PreferredSizeWidget? appbar;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    final constrainedBody = MaxWidthBox(child: body);
    return ResponsiveBuilder(
      compact: (_) => _BottomNav(
        destinations: destinations,
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
        appBar: appbar,
        floatingActionButton: floatingActionButton,
        body: constrainedBody,
      ),
      medium: (_) => _NavRail(
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: destinations,
        extended: false,
        body: constrainedBody,
        appbar: appbar,
        floatingActionButton: floatingActionButton,
      ),
      expanded: (_) => _NavRail(
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: destinations,
        extended: false,
        body: constrainedBody,
        appbar: appbar,
        floatingActionButton: floatingActionButton,
      ),
      large: (_) => _NavRail(
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: destinations,
        extended: true,
        body: constrainedBody,
        appbar: appbar,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}

class _BottomNav extends StatelessWidget {
  const _BottomNav({
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.body,
    this.appBar,
    this.floatingActionButton,
  });

  final List<NavDestination> destinations;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: [
          for (final d in destinations)
            NavigationDestination(
              icon: Icon(d.icon),
              selectedIcon: d.selectedIcon != null
                  ? Icon(d.selectedIcon)
                  : null,
              label: d.label,
            ),
        ],
      ),
    );
  }
}

class _NavRail extends StatelessWidget {
  const _NavRail({
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.destinations,
    required this.extended,
    required this.body,
    this.appbar,
    this.floatingActionButton,
  });

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final List<NavDestination> destinations;
  final bool extended;
  final Widget body;
  final PreferredSizeWidget? appbar;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            extended: extended,
            minExtendedWidth: 220,
            labelType: extended
                ? NavigationRailLabelType.none
                : NavigationRailLabelType.selected,
            leading: floatingActionButton,
            destinations: [
              for (final d in destinations)
                NavigationRailDestination(
                  icon: Icon(d.icon),
                  selectedIcon: d.selectedIcon != null
                      ? Icon(d.selectedIcon)
                      : null,
                  label: Text(d.label),
                ),
            ],
          ),
          const VerticalDivider(width: 1),
          Expanded(child: body),
        ],
      ),
    );
  }
}
