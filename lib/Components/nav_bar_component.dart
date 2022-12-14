import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sabta_app/Providers/routing_provider.dart';

import 'Utils/color_themes.dart';

class NavBarMenuComponent extends StatelessWidget {
  const NavBarMenuComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RoutingProvider routingProvider = Provider.of<RoutingProvider>(context);
    return BottomNavigationBar(
      selectedItemColor: PRIMARY_COLOR,
      unselectedItemColor: GREY_COLOR_20,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: routingProvider.currentIndex,
      onTap: routingProvider.nextPage,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            FeatherIcons.home,
          ),
        ),
        BottomNavigationBarItem(
          label: "Orders",
          icon: Icon(
            FeatherIcons.printer,
          ),
        ),
        BottomNavigationBarItem(
          label: "Requests",
          icon: Icon(
            FeatherIcons.plusSquare,
          ),
        ),
        BottomNavigationBarItem(
          label: "Wallet",
          icon: Icon(
            FeatherIcons.creditCard,
          ),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(
            FeatherIcons.user,
          ),
        ),
      ],
    );
  }
}
