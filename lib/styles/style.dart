import 'package:d20katter/styles/colors.dart';
import 'package:flutter/material.dart';

BoxDecoration headerDecoration = BoxDecoration(
    gradient: const LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        CustomColors.secondaryColor,
        CustomColors.primaryColor,
      ],
    ),
    borderRadius: BorderRadius.circular(75));
