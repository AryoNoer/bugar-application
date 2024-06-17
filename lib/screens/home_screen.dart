import 'package:flutter/material.dart';
import 'package:bugarapp/widgets/assessment_card.dart';
import 'package:bugarapp/widgets/custom_bottom_navigation_bar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello Aryo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: PageView(
                  children: [
                    Image.asset('assets/yoga1.png'),
                    Image.asset('assets/yoga2.png'),
                    Image.asset('assets/yoga3.png'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Penilaian',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const AssessmentCard(title: 'Kesiapan Pulang'),
              const AssessmentCard(title: 'Penilaian Kebugaran'),
              const AssessmentCard(title: 'Penilaian Sikap'),
              const AssessmentCard(title: 'Penilaian Pengenalan Gejala Depresi'),
              const AssessmentCard(title: 'Pengenalan Kesehatan Mental'),
              const AssessmentCard(title: 'Penilaian EPDS'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
