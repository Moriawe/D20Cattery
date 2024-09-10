import 'package:d20katter/constants/strings.dart';
import 'package:d20katter/widgets/utils/header_container.dart';
import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderContainerM(headerText: Strings.faqHeader),
          //Questions 1
          Text(Strings.faqQ1, style: Theme.of(context).textTheme.titleSmall),
          Text(Strings.faqA1, style: Theme.of(context).textTheme.bodyMedium),
          //Questions 1
          const SizedBox(
            height: 15.0,
          ),
          Text(Strings.faqQ2, style: Theme.of(context).textTheme.titleSmall),
          Text(Strings.faqA2, style: Theme.of(context).textTheme.bodyMedium),
          //Questions 1
          const SizedBox(
            height: 15.0,
          ),
          Text(Strings.faqQ3, style: Theme.of(context).textTheme.titleSmall),
          Text(Strings.faqA3, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
