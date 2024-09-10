import 'package:d20katter/styles/colors.dart';
import 'package:d20katter/widgets/navigation_bar/nav_items.dart';
import 'package:flutter/material.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavItemTap});
  final Function(String) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors.secondaryColor,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),
          for (int i = 1; i < navAboutUs.length; i++)
            MobileNavItem(item: navAboutUs[i], onNavItemTap: onNavItemTap),
          const Divider(color: CustomColors.primaryColor),
          for (int i = 1; i < navOurCats.length; i++)
            MobileNavItem(item: navOurCats[i], onNavItemTap: onNavItemTap),
          const Divider(color: CustomColors.primaryColor),
          for (int i = 0; i < navEnd.length; i++)
            MobileNavItem(item: navEnd[i], onNavItemTap: onNavItemTap),
        ],
      ),
    );
  }
}

class MobileNavItem extends StatelessWidget {
  const MobileNavItem({
    super.key,
    required this.item,
    required this.onNavItemTap,
  });

  final NavItem item;
  final Function(String p1) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      titleTextStyle: const TextStyle(
        color: CustomColors.primaryTextColor,
      ),
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap: () {
        onNavItemTap(item.route);
        Navigator.of(context).pop();
      },
    );
  }
}
