import 'package:flutter/material.dart';

class HeaderContainerL extends StatelessWidget {
  const HeaderContainerL({super.key, required this.headerText});

  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(headerText,
                style: Theme.of(context).textTheme.titleLarge)));
  }
}

class HeaderContainerM extends StatelessWidget {
  const HeaderContainerM({super.key, required this.headerText});

  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Container(
        //           constraints: BoxConstraints.expand(
        //   height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0,
        // ),
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(headerText,
                style: Theme.of(context).textTheme.titleMedium)));
  }
}

class HeaderContainerS extends StatelessWidget {
  const HeaderContainerS({super.key, required this.headerText});

  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Container(
        //           constraints: BoxConstraints.expand(
        //   height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0,
        // ),
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(headerText,
                style: Theme.of(context).textTheme.titleSmall)));
  }
}

// TODO refactor into one single widget with ENUM for size