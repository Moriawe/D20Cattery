import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  const BulletList({super.key, required this.list, required this.bullet});

  final List<String> list;
  final IconData bullet;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < list.length; i++)
          ListTile(
            leading: Icon(bullet),
            title: Text(list[i]),
          ),
      ],
    );
  }
}
