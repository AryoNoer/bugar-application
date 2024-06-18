import 'package:bugarapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:bugarapp/widgets/about_card.dart';
import 'package:bugarapp/widgets/custom_bottom_navigation_bar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Tentang Kami',
          style: TextStyle(color: Colors.pink, fontSize: 20),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
             Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Hai Bufas, Aplikasi ini adalah hasil penelitian Kerja Sama Perguruan Tinggi (PKTP) yang dirancang bangun oleh dosen kebidanan Poltekkes Kemenkes Jakarta 3 dan Dosen Untirta yaitu Junengsih, Jehanara, Shentya F, dan Mukhlidah Hanun. Aplikasi ini bermanfaat meningkatkan kebugaran pasca salin, agar setiap ibu nifas dapat melewati masa nifas dengan kondisi sehat, bugar dan bahagia.',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'assets/images/aboutimage.png', // Ganti dengan gambar ilustrasi yang sesuai
                  height: 200,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Penyusun',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 10),
              const AboutCard(
                name: 'Junengsih, SST.MKM',
                imageUrl: 'assets/images/bitmap.png',
              ),
              const AboutCard(
                name: 'Jehanara, SST.MKM',
                imageUrl: 'assets/images/login1.png',
              ),
              const AboutCard(
                name: 'Shentya F, SST.MKM',
                imageUrl: 'assets/images/login1.png',
              ),
              const AboutCard(
                name: 'Mukhlidah Hanun, SST.MKM',
                imageUrl: 'assets/images/login1.png',
              ),
            ],
          ),
        ),
      ),
                   bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
