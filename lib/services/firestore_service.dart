import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FirestoreDatabase {
  final storage = FirebaseStorage.instance;
  final storageRef = FirebaseStorage.instance.ref();

  // Download all files in a folder from Firebase ? Not sure it is working
  Future<List<String>> getListOfAllImages(String uri) async {
    final ref = storageRef.child(uri);
    List<String> imageUrls = [];
    try {
      final res = await ref.listAll();
      imageUrls = await Future.wait(
          res.items.map((ref) => ref.getDownloadURL()).toList());
    } catch (e) {
      debugPrint("Error - $e");
    }
    return imageUrls;
  }

// Dear programmer
  String? downloadURL;

  Future getData(String fileName) async {
    try {
      await getDownloadUrl(fileName);
      return downloadURL;
    } catch (e) {
      debugPrint("Error - $e");
      return null;
    }
  }

  Future<void> getDownloadUrl(String fileName) async {
    downloadURL =
        await FirebaseStorage.instance.ref().child(fileName).getDownloadURL();
    debugPrint(downloadURL.toString());
  }
}

// ONE IMAGE
// STATIC
//final uri =
//      'https://firebasestorage.googleapis.com/v0/b/nationalkatten.appspot.com/o/';
//Image.network('${uri}bronzed20.png?alt=media&token=6a050b37-1504-4a00-a681-b46ec2dd1bd4'),
// OR DYNAMIC
// FutureBuilder(
//             future: FirestoreDatabase().getData("bronzed20.png"),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const CircularProgressIndicator();
//               } else if (snapshot.hasError) {
//                 return Text('Error: ${snapshot.error}');
//               } else if (!snapshot.hasData) {
//                 return const Text('No files found');
//               } else {
//                 return Image.network(snapshot.data.toString());
//               }
//             }),

