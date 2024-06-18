import 'package:flutter/material.dart';

class CustomCheckboxList extends StatelessWidget {
  final String label;
  final List<String> items;

  const CustomCheckboxList({super.key, 
    required this.label,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          Column(
            children: items.map((item) {
              return CheckboxListTile(
                title: Text(item),
                value: false,
                onChanged: (bool? value) {},
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
