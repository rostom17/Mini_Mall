import 'package:iconsax_plus/iconsax_plus.dart';

import 'nav_destination.dart';

class AppDestinations {
  const AppDestinations._();

  static const List<NavDestination> destinations = [
    NavDestination(
      icon: IconsaxPlusLinear.home_1,
      selectedIcon: IconsaxPlusBold.home_1,
      label: "Home",
    ),

    NavDestination(
      icon: IconsaxPlusLinear.category_2,
      selectedIcon: IconsaxPlusBold.category_2,
      label: "Category",
    ),

    NavDestination(
      icon: IconsaxPlusLinear.shopping_cart,
      label: "Cart",
      selectedIcon: IconsaxPlusBold.shopping_cart,
    ),

    NavDestination(
      icon: IconsaxPlusLinear.user,
      selectedIcon: IconsaxPlusBold.user,
      label: "Account",
    ),
  ];
}
