import 'package:flutter/material.dart';
import 'package:qr_generator/generate_qr.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: const ColorScheme(
              brightness: Brightness.dark,
              primary: Color(0xFF0D1B2A),
              onPrimary: Color(0xFFE0FFFF),
              secondary: Color(0xFF1B263B),
              onSecondary: Color(0xFFFFFFFF),
              error: Color(0xFFCF6679),
              onError: Color(0xFFFFFFFF),
              surface: Color(0xFF101C2E),
              onSurface: Color(0xFFECEFF1))),
      home: const GenerateQRCode(),
    );
  }
}
