import 'package:flutter/material.dart';
import 'package:d20katter/styles/colors.dart';

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 50,
      width: double.maxFinite,
      color: CustomColors.primaryColor,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "© 2024 Jennie Lindahl",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: CustomColors.primaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
