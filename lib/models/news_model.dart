import 'package:flutter/material.dart';

List<NewsModel> newsList = [
  NewsModel(
    title: 'Två kattungar till salu!',
    body:
        'Vi har två hanar kvar som söker nya hem. De är flyttklara den 30 september.',
    image: Image.asset('images/BellyoGelly.png'),
    date: DateTime(2024, 8, 10),
  ),
  NewsModel(
    title: 'Kattutställning',
    body:
        """Den 17:e Augusti kommer vi att vara på Järvas kattklubbs utställning på Solvalla i Stockholm.
        Tillsammans med vår förening Nationalkatten ordnar vi en Europé Special!""",
    image: null,
    date: DateTime(2024, 8, 10),
  ),
];

class NewsModel {
  final String title;
  final String body;
  final DateTime date;
  final Image? image;
  final String? link;

  NewsModel({
    required this.title,
    required this.body,
    required this.date,
    this.image,
    this.link,
  });
}

// TODO: Separate the news items into a separate file

/*
  NewsModel(
    title: 'Kattutställning',
    body:
        """Den 17:e Augusti kommer vi att vara på Järvas kattklubbs utställning på Solvalla i Stockholm.
        Tillsammans med vår förening Nationalkatten ordnar vi en Europé Special!""",
    image: Image.asset('images/BellyoGelly.png'),
    date: DateTime(2024, 8, 10),
    link: 'https://www.jarkatt.se/',
  ),
  */
