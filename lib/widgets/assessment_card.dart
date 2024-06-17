import 'package:flutter/material.dart';

class AssessmentCard extends StatelessWidget {
  final String title;

  const AssessmentCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        minTileHeight: 123,
        leading: Image.asset('assets/images/login1.png'),
        title: Text(title),
        titleTextStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
      ),
    );
  }
}
