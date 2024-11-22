import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_theme.dart';
import 'package:gpa_culator/feature/home/presentation/screens/home_screen.dart';

class GpaCalculatorApp extends StatelessWidget {
  const GpaCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const HomeScreen(),
    );
  }
}
