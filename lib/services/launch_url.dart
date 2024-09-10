import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

void launchURL(String url) async {
  try {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  } catch (e) {
    debugPrint('Error launching URL: $e');
  }
}
