import 'package:flutter/material.dart';

const double minDesktopWidth = 750.0;

// class ScaleSize {
//   static double textScaleFactor(BuildContext context,
//       {double maxTextScaleFactor = 2}) {
//     final width = MediaQuery.of(context).size.width;
//     double val = (width / 1400) * maxTextScaleFactor;
//     return max(1, min(val, maxTextScaleFactor));
//   }
// }

// final double screenHeight = MediaQuery.of(context).size.height;
// final double screenWidth = MediaQuery.of(context).size.width;
// final Orientation orientation = MediaQuery.of(context).orientation;

// class ResponsiveWidget extends StatelessWidget {
//       final Widget largeScreen;
//       final Widget mediumScreen;
//       final Widget smallScreen;
    
//       const ResponsiveWidget({
//         Key key,
//         @required this.largeScreen,
//         this.mediumScreen,
//         this.smallScreen,
//       }) : super(key: key);
    
//       @override
//       Widget build(BuildContext context) {
//         var screenSize = MediaQuery.of(context).size;
//         if (screenSize.width > 800) {
//           return largeScreen;
//         } else if (screenSize.width > 600) {
//           return mediumScreen ?? largeScreen;
//         } else {
//           return smallScreen ?? largeScreen;
//         }
//       }
//     }