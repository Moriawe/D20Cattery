import 'package:d20katter/styles/colors.dart';
import 'package:d20katter/widgets/utils/header_container.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.newsList,
  });

  final List newsList;

  @override
  Widget build(BuildContext context) {
    final recentNewsList = newsList.where((news) {
      return news.date
          .isAfter(DateTime.now().subtract(const Duration(days: 90)));
    }).toList();

    return Container(
      padding: const EdgeInsets.only(top: 20),
      color: CustomColors.background,
      child: Column(
        children: [
          for (int i = 0; i < recentNewsList.length; i++) ...[
            // Title
            HeaderContainerS(headerText: recentNewsList[i].title),
            // Date
            Text(
              DateFormat('yyyy-MM-dd').format(recentNewsList[i].date),
              style: Theme.of(context).textTheme.labelSmall,
            ),
            // Bodytext
            Text(recentNewsList[i].body),
            // Image
            recentNewsList[i].image ?? Container(),
            const SizedBox(height: 50),
          ],
        ],
      ),
    );
  }
}
