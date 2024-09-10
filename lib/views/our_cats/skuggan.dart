import 'package:d20katter/services/firestore_service.dart';
import 'package:d20katter/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class Skuggan extends StatefulWidget {
  const Skuggan({super.key});

  @override
  State<Skuggan> createState() => _SkugganState();
}

class _SkugganState extends State<Skuggan> {
  late Future<List> imageFiles;

  @override
  void initState() {
    super.initState();
    imageFiles = FirestoreDatabase().getListOfAllImages("d20cats/Shadow/");
  }

  // WIDGET
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Text(
          "OOO's Smoking Hot Shadow Man",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 10),
        Text(
          '"Skuggan"',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 20),
        Text(
            "Skuggan är vår kastrerade hane. Lite av en fegis men otroligt gosig och snäll.",
            style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 10),
        // IMAGE GALLERY
        FutureBuilder<List>(
          future: imageFiles,
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
                    color: CustomColors.cardBackground,
                    shadowColor: CustomColors.secondaryTextColor,
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
      ],
    ));
  }
}
