import 'package:flutter/material.dart';
import 'package:gpa_culator/gpa_calculator.dart';

import 'core/services/sql_lite_services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppData.initialDB();
  runApp(const GpaCalculatorApp());
}
