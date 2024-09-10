import 'package:d20katter/services/firestore_service.dart';
import 'package:d20katter/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class Kakan extends StatefulWidget {
  const Kakan({super.key});

  @override
  State<Kakan> createState() => _KakanState();
}

class _KakanState extends State<Kakan> {
  late Future<List> imageFiles;

  @override
  void initState() {
    super.initState();
    imageFiles = FirestoreDatabase().getListOfAllImages("d20cats/Cookie/");
  }

  // WIDGET
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Text(
          "Silverblommans Tuttifrutti",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 10),
        Text(
          '"Kakan"',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 20),
        Text(
            'Kakan är en mycket smart katt som dessutom är väldigt mat-motiverad. En perfekt kombo för att lära sig tricks! Hon kan sitt, snurra runt och tass och vårt senaste tilltag är att lära henne att "prata" genom att trycka på knappar',
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
