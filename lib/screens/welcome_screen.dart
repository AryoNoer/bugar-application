//welcome screen
import 'package:flutter/material.dart';
import 'package:bugarapp/widgets/bottom_sheet.dart'; // Import your BottomSheet widget

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      builder: (BuildContext context) {
        return const CustomBottomSheet(); // Use CustomBottomSheet widget here
      },
    );
  }


@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Welcome-Page.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Align items vertically
        children: [
          const Spacer(), // Pushes the button down
          Center( // Keep the button horizontally centered
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.white
              ),
              onPressed: () => _showBottomSheet(context),
              child: const Text('Lanjutkan',
              style: TextStyle(fontSize: 14, color: Colors.pink, fontWeight: FontWeight.normal),
              ),
            ),
          ),
          const SizedBox(height: 50), // Add some space below the button
        ],
      ),
    ),
  );
}
}