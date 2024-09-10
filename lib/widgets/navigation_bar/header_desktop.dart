import 'package:d20katter/constants/strings.dart';
import 'package:d20katter/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:d20katter/widgets/navigation_bar/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, this.onLogoTap, required this.onNavItemTap});
  final VoidCallback? onLogoTap;
  final Function(String) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 140.0,
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 40.0),
          padding: const EdgeInsets.fromLTRB(100, 10, 20, 10),
          decoration: headerDecoration,
          child: Column(
            children: [
              Text(
                Strings.pageName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: navAboutUs[0].route,
                      style: Theme.of(context).textTheme.bodySmall,
                      onChanged: (String? route) {
                        if (route != null) {
                          onNavItemTap(route);
                        }
                      },
                      items: navAboutUs.map((NavItem item) {
                        return DropdownMenuItem<String>(
                          enabled: item.enabled,
                          value: item.route,
                          child: Text(
                            item.title,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        );
                      }).toList(), // Convert Iterable to List
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: navOurCats[0].route,
                      style: Theme.of(context).textTheme.bodySmall,
                      onChanged: (String? route) {
                        if (route != null) {
                          onNavItemTap(route);
                        }
                      },
                      items: navOurCats.map((NavItem item) {
                        return DropdownMenuItem<String>(
                          enabled: item.enabled,
                          value: item.route,
                          child: Text(
                            item.title,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        );
                      }).toList(), // Convert Iterable to List
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  TextButton(
                    onPressed: () {
                      onNavItemTap(navEnd[0].route);
                    },
                    child: Text(navEnd[0].title,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  const SizedBox(width: 20.0),
                  TextButton(
                    onPressed: () {
                      onNavItemTap(navEnd[1].route);
                    },
                    child: Text(navEnd[1].title,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 4,
          left: 30,
          child: GestureDetector(
            onTap: onLogoTap,
            child: Image.asset(
              "images/d20logo.png",
              height: 170,
            ),
          ),
        ),
      ],
    );
  }
}
