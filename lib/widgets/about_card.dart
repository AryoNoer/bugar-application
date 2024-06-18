import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const AboutCard({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, 
      child: Card(
        clipBehavior: Clip.antiAlias,

        margin: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Colors.pink,
            width: 1.17,
          ),
        ),
        child: Column(
          children: [
            Expanded( // Moved Expanded to the top for the image
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image
.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ListTile( // Moved ListTile and Padding below the image
              title: Text(name),
              subtitle: Text(
                'Secondary Text',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
