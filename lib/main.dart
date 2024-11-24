import 'package:flutter/material.dart';
import 'package:gpa_culator/gpa_calculator.dart';
import 'package:flutter/services.dart';
import 'core/services/sql_lite_services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppData.initialDB();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
  ]);
  runApp(const GpaCalculatorApp());
}
