import 'package:flutter/material.dart';
import 'package:bugarapp/screens/home_screen.dart';
import 'package:bugarapp/widgets/custom_bottom_navigation_bar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Pemeriksaan'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
          Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => const HomeScreen())
          );
          },
        ),
      ),
      body: const Center(
        child: Text('Riwayat Screen'),
      ),
             bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}