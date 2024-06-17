//bottom sheet
import 'package:flutter/material.dart';
import 'package:bugarapp/screens/login_screen.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Selamat Datang di',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Text(
              'Bugar Pasca Bersalin',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Aplikasi ini berisi penguatan kapasitas ibu dan keluarga dalam '
              'pengenalan tanda bahaya nifas, pemenuhan nutrisi, adaptasi fisik ibu nifas '
              'dan menyusui, proses pencapaian peran keibuan, adaptasi menjadi orang tua, '
              'promosi kesehatan untuk perilaku hidup sehat, pencegahan penyakit ...',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Untuk itu bunda, kami harapkan agar melakukan pengisian data dengan benar agar bunda dapat '
              'memperoleh informasi dan rekomendasi selama menjalani peran baru sebagai ibu nifas.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Persetujuan :',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              '1. Saya bersedia untuk berpartisipasi secara sukarela tanpa paksaan dan menyatakan bahwa data yang '
              'saya isi adalah benar dan dapat dipertanggungjawabkan\n'
              '2. Saya mengerti bahwa data yang saya isi pada Aplikasi BUGAR PASCA BERSALIN ditujukan untuk informasi '
              'kesehatan bagi saya sendiri dan sebagai kepentingan pengembangan keilmuan (penelitian dsb) dan dijaga '
              'kerahasiaannya.\n'
              '3. Saya mengerti bahwa data pribadi yang saya masukan dipergunakan untuk mendapatkan gambaran pasca salin.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Center(
               child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the bottom sheet
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  ); // Navigate to the login screen
                },
                child: const Text('Lanjutkan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}