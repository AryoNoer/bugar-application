import 'package:flutter/material.dart';

class AssessmentCard extends StatelessWidget {
  final String title;

  const AssessmentCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Image.asset('assets/yoga.png'),
        title: Text(title),
      ),
    );
  }
}
