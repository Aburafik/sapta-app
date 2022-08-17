import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:sabta_app/Components/Utils/color_themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: PRIMARY_COLOR,
        unselectedItemColor: GREY_COLOR_20,
        showSelectedLabels: true,
        showUnselectedLabels: true,
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
      ),
    );
  }
}
