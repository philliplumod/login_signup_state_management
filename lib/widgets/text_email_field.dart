import 'package:flutter/material.dart';

class CustomTextEmailField extends StatelessWidget {
  final String? hint;
  final String? label;
  final TextEditingController controller;

  const CustomTextEmailField({
    super.key,
    this.hint,
    this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          border: OutlineInputBorder( 
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
