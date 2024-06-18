import 'package:flutter/material.dart';

class CustomPasswordField extends StatelessWidget {
  const CustomPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(14.0)),
          labelStyle: const TextStyle(fontSize: 16),
          labelText: 'Password',
          hintText: '********',
          prefixIcon: const Icon(Icons.lock),
          focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.pink),
          ),
        ),         
        obscureText: true,
      ),
    );
  }
}
