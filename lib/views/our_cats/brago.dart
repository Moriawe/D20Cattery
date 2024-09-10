import 'package:d20katter/services/firestore_service.dart';
import 'package:d20katter/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class Brago extends StatefulWidget {
  const Brago({super.key});

  @override
  State<Brago> createState() => _BragoState();
}

class _BragoState extends State<Brago> {
  late Future<List> imageFiles;

  @override
  void initState() {
    super.initState();
    imageFiles = FirestoreDatabase().getListOfAllImages("d20cats/Brago/");
  }

  // WIDGET
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Text(
          "D20's Brago the Barbarian",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 10),
        Text(
          '"Bra-goos"',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 20),
        Text("Brago är dotter till Kakan.",
            style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 10),
        //IMAGE GALLERY
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
