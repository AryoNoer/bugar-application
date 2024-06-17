import 'package:flutter/material.dart';

class CustomRadioField extends StatelessWidget {
  const CustomRadioField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          const Text('Status Perkawinan: '),
          Expanded(
            child: ListTile(
              title: const Text('Menikah'),
              leading: Radio(
                value: 'Menikah',
                groupValue: 'statusPerkawinan',
                onChanged: (value) {},
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              title: const Text('Belum Menikah'),
              leading: Radio(
                value: 'Belum Menikah',
                groupValue: 'statusPerkawinan',
                onChanged: (value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
