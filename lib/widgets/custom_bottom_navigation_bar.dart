import 'package:flutter/material.dart';
import 'package:bugarapp/screens/about_screen.dart';
import 'package:bugarapp/screens/history_screen.dart';
import 'package:bugarapp/screens/home_screen.dart';
import 'package:bugarapp/screens/profile_screen.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => const HistoryScreen())
          );
        // Add navigation for Riwayat screen if needed
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AboutScreen()),
        );
        break;
      case 3:
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => const ProfileScreen())
          );
        // Add navigation for Akun screen if needed
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long),
          label: 'Riwayat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.error_outline),
          label: 'Tentang',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Akun',
        ),
      ],
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: (index) => _onItemTapped(context, index),
    );
  }
}
