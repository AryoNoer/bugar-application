import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final IconData icon;

  const CustomTextField({super.key, 
    required this.label,
    required this.hint,
    required this.icon,
  });

  
@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10
),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.pink),
             // Add border color here
          ),
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black54, fontSize: 16),
          // Add label color here,
          hintText: hint,
          prefixIcon: Icon(icon),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.pink),
          ),
          // Add focused border color her
        ),
      ),
    );
  }
}
