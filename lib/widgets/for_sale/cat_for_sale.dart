import 'package:d20katter/widgets/for_sale/sale_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CatForSale extends StatefulWidget {
  const CatForSale({super.key});

  @override
  State<CatForSale> createState() => _CatForSaleState();
}

class _CatForSaleState extends State<CatForSale> {
  final uri =
      'https://firebasestorage.googleapis.com/v0/b/nationalkatten.appspot.com/o/';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < saleItems.length; i++)
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                    style: Theme.of(context).textTheme.titleSmall,
                    saleItems[i].name),
                Text(
                  "Född: ${DateFormat('yyyy-MM-dd').format(saleItems[i].date)}",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                    style: Theme.of(context).textTheme.bodyMedium,
                    saleItems[i].ems),
                Text(saleItems[i].info),
                Image.network(uri + saleItems[i].imageURL),
              ],
            ),
          ),
      ],
    );
  }
}
