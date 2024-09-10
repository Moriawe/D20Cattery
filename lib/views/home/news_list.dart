import 'package:d20katter/constants/strings.dart';
import 'package:d20katter/styles/colors.dart';
import 'package:d20katter/models/news_model.dart';
import 'package:d20katter/widgets/home/news_item.dart';
import 'package:d20katter/widgets/utils/header_container.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              color: CustomColors.background,
              child: Column(
                children: [
                  const HeaderContainerL(headerText: Strings.mainHeader),
                  Text(Strings.mainBody,
                      style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: 40),
                  const HeaderContainerM(headerText: Strings.newsHeader)
                ],
              ),
            ),
            NewsItem(newsList: newsList),
          ]),
    );
  }
}
