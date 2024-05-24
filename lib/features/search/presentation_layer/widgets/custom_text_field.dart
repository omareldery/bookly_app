import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white60),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white60),
          borderRadius: BorderRadius.circular(24),
        ),
        hintText: 'Search',
        suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      ),
    );
  }
}