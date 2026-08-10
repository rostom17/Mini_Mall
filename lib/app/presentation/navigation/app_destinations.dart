import 'package:flutter/material.dart';

import 'nav_destination.dart';

class AppDestinations {
  const AppDestinations._();

  static const List<NavDestination> destinations = [
    NavDestination(
      icon: Icons.home,
      selectedIcon: Icons.home_filled,
      label: "Home",
    ),

    NavDestination(
      icon: Icons.shopping_cart_checkout_sharp,
      label: "Cart",
      selectedIcon: Icons.shopping_cart_checkout,
    ),

    NavDestination(
      icon: Icons.person,
      selectedIcon: Icons.person_2,
      label: "Profile",
    ),
  ];
}
