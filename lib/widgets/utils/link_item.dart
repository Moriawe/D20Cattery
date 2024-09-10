import 'package:d20katter/services/launch_url.dart';
import 'package:flutter/material.dart';

class LinkItem {
  final String title;
  final String description;
  final String url;

  LinkItem({required this.title, required this.url, this.description = ""});
}

class Link extends StatelessWidget {
  const Link({required this.linkItem, super.key});

  final LinkItem linkItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          launchURL(linkItem.url);
        },
        child: Text(
          linkItem.title,
          style: //Theme.of(context).textTheme.bodyMedium),
              const TextStyle(
            decoration: TextDecoration.underline,
          ),
        ));
  }
}

class LinkWithDescription extends StatelessWidget {
  const LinkWithDescription({required this.linkItem, super.key});

  final LinkItem linkItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            launchURL(linkItem.url);
          },
          child: Text(
            linkItem.title,
            style: //Theme.of(context).textTheme.bodyMedium),
                const TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        Text("- ${linkItem.description}",
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
