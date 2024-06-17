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
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 16), // Sesuaikan ukuran font
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true, // Menempatkan teks di tengah
        automaticallyImplyLeading: false,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello Aryo',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: PageView(
                  children: [
                    Image.asset('assets/images/login1.png'),
                    Image.asset('assets/images/login1.png'),
                    Image.asset('assets/images/login1.png'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Penilaian',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
