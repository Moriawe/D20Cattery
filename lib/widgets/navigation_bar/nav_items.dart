import 'package:flutter/material.dart';

List<NavItem> navAboutUs = [
  NavItem('Info', '/', Icons.arrow_left, false),
  NavItem('Om oss', '/aboutUs', Icons.arrow_left, true),
  NavItem('Köpa katt', '/buyACat', Icons.arrow_left, true),
  NavItem('Kontakt', '/contact', Icons.arrow_left, true),
  NavItem('FAQ', '/faq', Icons.arrow_left, true),
  NavItem('Européen', '/european', Icons.arrow_left, true),
];

List<NavItem> navOurCats = [
  NavItem('Våra katter', '/', Icons.arrow_left, false),
  NavItem('Kullar', '/litters', Icons.arrow_left, true),
  NavItem('Kakan', '/kakan', Icons.arrow_left, true),
  NavItem('Skuggan', '/skuggan', Icons.arrow_left, true),
  NavItem('Brago', '/brago', Icons.arrow_left, true),
];

List<NavItem> navEnd = [
  NavItem('Till salu', '/forSale', Icons.arrow_left, true),
  NavItem('Länkar', '/links', Icons.arrow_left, true),
];

class NavItem {
  final String title;
  final String route;
  final IconData icon;
  final bool enabled; // So I can have a title on the menu that is non-clickable

  NavItem(this.title, this.route, this.icon, this.enabled);
}
