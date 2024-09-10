import 'package:d20katter/styles/colors.dart';
import 'package:d20katter/constants/strings.dart';
import 'package:d20katter/widgets/for_sale/cat_for_sale.dart';
import 'package:flutter/material.dart';

class ForSale extends StatelessWidget {
  const ForSale({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      children: [
        Text(
          Strings.forSaleHeader,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: CustomColors.primaryTextColor,
          ),
        ),
        CatForSale(),
      ],
    ));
  }
}
