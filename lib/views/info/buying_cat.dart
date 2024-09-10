import 'package:d20katter/constants/strings.dart';
import 'package:d20katter/constants/claims_list.dart';
import 'package:d20katter/widgets/utils/bullet_list.dart';
import 'package:d20katter/widgets/utils/header_container.dart';
import 'package:flutter/material.dart';

class BuyACat extends StatelessWidget {
  const BuyACat({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderContainerM(headerText: Strings.buyACatHeader),

          Text(Strings.buyACatBody,
              style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(
            height: 25.0,
          ),
          Text("Vad du kan förvänta dig av oss:",
              style: Theme.of(context).textTheme.titleSmall),
          BulletList(list: claimsList, bullet: Icons.pets),
          const SizedBox(
            height: 25.0,
          ),
          Text("Vad jag förväntar mig av dig:",
              style: Theme.of(context).textTheme.titleSmall),

          BulletList(list: counterClaimsList, bullet: Icons.pets)
          // for (int i = 0; i < counterClaimsList.length; i++)
          //   Text(counterClaimsList[i],
          //       style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

//TODO: Make a widget that displays a bullet and text for all items in a list
