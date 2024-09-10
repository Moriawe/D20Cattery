import 'package:d20katter/services/firestore_service.dart';
import 'package:d20katter/widgets/utils/header_container.dart';
import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class Litters extends StatefulWidget {
  const Litters({super.key});

  @override
  State<Litters> createState() => _LittersState();
}

class _LittersState extends State<Litters> {
  late Future<List> cookieImages;
  late Future<List> monsterImages;

  @override
  void initState() {
    super.initState();
    cookieImages =
        FirestoreDatabase().getListOfAllImages("d20cats/CookieLitter/");
    monsterImages =
        FirestoreDatabase().getListOfAllImages("d20cats/MonsterLitter/");
  }

  // WIDGET
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        const HeaderContainerM(headerText: "Kullar"),
        // MONSTER KULLEN
        Text(
          "D20's Monster-kull",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text("Födda 24/6 2024", style: Theme.of(context).textTheme.bodyMedium),
        Text(
            "SE*CH D20's Brago the barbarian (EUR d) & DK*GIC Illias v. Knuddel-Kat, JW (EUR ds 22)",
            style: Theme.of(context).textTheme.bodyMedium),
        FutureBuilder<List>(
          future: monsterImages,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final files = snapshot.data!;
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                shrinkWrap: true,
                itemCount: files.length,
                itemBuilder: (context, index) {
                  final file = files[index];
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: InstaImageViewer(child: Image.network(file)),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return const Text(
                "Something went wrong",
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
        const SizedBox(height: 50),

        // KAK KULLEN
        Text(
          "D20's Kak-kull",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text("Födda 17/7 2022", style: Theme.of(context).textTheme.bodyMedium),
        Text(
            "S*Silverblomman's Tuttifrutti (EUR f) & FI*Kyöpelivuoren Nellin Narkissi (EUR ds)",
            style: Theme.of(context).textTheme.bodyMedium),
        FutureBuilder<List>(
          future: cookieImages,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final files = snapshot.data!;
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                shrinkWrap: true,
                itemCount: files.length,
                itemBuilder: (context, index) {
                  final file = files[index];
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: InstaImageViewer(child: Image.network(file)),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return const Text(
                "Something went wrong",
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
        const SizedBox(height: 50),
      ],
    ));
  }
}
