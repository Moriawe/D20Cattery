import 'package:d20katter/styles/colors.dart';
import 'package:d20katter/constants/strings.dart';
import 'package:flutter/material.dart';

class OurCats extends StatelessWidget {
  const OurCats({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Flexible(
          flex: 2,
          child: Column(
            children: [
              Text(
                Strings.aboutUsHeader,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.primaryTextColor,
                ),
              ),
              Text(
                "OUR CATS",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.primaryTextColor,
                ),
              )
            ],
          )),
      Flexible(
          flex: 1,
          child: Column(
            children: [Image.asset('images/kattunge.jpg')],
          ))
    ]));
  }
}
