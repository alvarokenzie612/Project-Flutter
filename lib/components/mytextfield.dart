import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Wajib tambah ini

class MyTextField extends StatelessWidget {
  final TextEditingController txtController;
  final String? myHint;
  final double radius;
  final bool isPassword;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters; // Tambah parameter ini

  const MyTextField({
    super.key,
    required this.txtController,
    this.myHint,
    this.radius = 0,
    this.isPassword = false,
    this.keyboardType,
    this.inputFormatters, // Daftarkan di sini
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: isPassword,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters, // Pasang ke TextField bawaan
      decoration: InputDecoration(
        hintText: myHint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}
