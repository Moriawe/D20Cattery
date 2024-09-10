import 'package:d20katter/constants/strings.dart';
import 'package:d20katter/widgets/utils/header_container.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HeaderContainerM(headerText: Strings.contactHeader),
          Text(Strings.contactMail,
              style: Theme.of(context).textTheme.bodyMedium),
          Text(Strings.contactLocation,
              style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

//TODO: Display a google map of Kungälv
