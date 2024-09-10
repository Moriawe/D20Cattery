import 'package:d20katter/constants/strings.dart';
import 'package:d20katter/widgets/utils/header_container.dart';
import 'package:flutter/material.dart';

class European extends StatelessWidget {
  const European({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderContainerM(headerText: Strings.europeanHeader),
          Text(Strings.europeanBody,
              style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
