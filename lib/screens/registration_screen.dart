import 'package:flutter/material.dart';
import 'package:bugarapp/screens/login_screen.dart';
import 'package:bugarapp/widgets/custom_text_field.dart';
import 'package:bugarapp/widgets/custom_dropdown_field.dart';
import 'package:bugarapp/widgets/custom_radio_field.dart';
import 'package:bugarapp/widgets/custom_checkbox_list.dart';
import 'package:bugarapp/widgets/custom_password_field.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrasi'),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CustomTextField(label: 'Nama', hint: 'Aryo', icon: Icons.person),
            const CustomTextField(label: 'Umur', hint: '22', icon: Icons.calendar_today),
            const CustomTextField(label: 'Tempat Lahir', hint: 'Jakarta', icon: Icons.location_city),
            const CustomTextField(label: 'Tanggal Lahir', hint: '01/01/1990', icon: Icons.date_range),
            const CustomTextField(label: 'Alamat', hint: 'Jln Margonda', icon: Icons.home),
            const CustomDropdownField(label: 'Golongan Darah', items: ['A', 'B', 'AB', 'O']),
            const CustomDropdownField(label: 'Agama', items: ['Islam', 'Kristen', 'Hindu', 'Budha', 'Lainnya']),
            const CustomTextField(label: 'No. Telp', hint: '0982111221', icon: Icons.phone),
            const CustomDropdownField(label: 'Pendidikan', items: ['SD', 'SMP', 'SMA', 'Diploma', 'Sarjana', 'Magister', 'Doktor']),
            const CustomRadioField(),
            const CustomDropdownField(label: 'Status Gravida (Kehamilan ke)', items: ['Primi (Pertama)', 'Multi (Kedua)']),
            const CustomDropdownField(label: 'Jumlah Anak Yang Dilahirkan', items: ['Satu', 'Dua', 'Tiga']),
            const CustomDropdownField(label: 'Riwayat Persalinan', items: ['Normal', 'Caesar']),
            const CustomDropdownField(label: 'Riwayat Kehamilan Dan Persalinan Yang Lalu', items: ['Ada Komplikasi', 'Tidak Ada Komplikasi']),
            const CustomCheckboxList(label: 'Riwayat Penyakit', items: ['DM', 'Hipertensi', 'Asma', 'Jantung', 'Tidak Ada']),
            const CustomCheckboxList(label: 'Keterpaparan Informasi Tentang Kebugaran Pasca Saling', items: ['Informasi Dari Bidan', 'Media Sosial', 'Majalah', 'Tidak Pernah']),
            const CustomCheckboxList(label: 'Persiapan Kebugaran Pasca Salin', items: ['Kelas Senam Hamil', 'Yoga', 'Renang', 'Dll.', 'Tidak Ada']),
            const CustomPasswordField(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform registration action
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                backgroundColor: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                'Daftar',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const Text(
                'Sudah Akun ? Yuk Masuk !',
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
