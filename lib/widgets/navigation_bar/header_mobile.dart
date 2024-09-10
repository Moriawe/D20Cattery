import 'package:d20katter/styles/colors.dart';
import 'package:d20katter/constants/strings.dart';
import 'package:d20katter/styles/style.dart';
import 'package:flutter/material.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onMenuTap});
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        margin: const EdgeInsets.fromLTRB(10, 0, 20, 10),
        padding: const EdgeInsets.only(left: 25.0),
        decoration: headerDecoration,
        child: Row(
          children: [
            const Text(
              Strings.pageName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: CustomColors.primaryTextColor,
              ),
            ),
            const Spacer(),
            IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu)),
            const SizedBox(width: 16),
          ],
        ));
  }
}
