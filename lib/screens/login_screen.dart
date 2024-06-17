import 'package:flutter/material.dart';
import 'package:bugarapp/screens/home_screen.dart';
import 'package:bugarapp/screens/registration_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/your_image.png', // Replace with your actual image asset
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                labelText: 'Username',
                hintText: 'Username',
                prefixIcon: const Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                labelText: 'Kata sandi',
                hintText: 'Kata sandi',
                prefixIcon: const Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const HomeScreen()));
                // Perform login action
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15), backgroundColor: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                'Masuk',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navigate to the registration page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const RegistrationScreen()));
              },
              child: const Text(
                'Belum Punya Akun? Yuk Registrasi Disini!',
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}