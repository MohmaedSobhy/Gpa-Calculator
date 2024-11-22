import 'package:flutter/material.dart';
import 'package:gpa_culator/core/utils/app_string.dart';

// ignore: must_be_immutable
class DropDownListItmes extends StatelessWidget {
  DropDownListItmes({super.key, this.currentGrade, this.onChanged});

  String? currentGrade;
  final ValueChanged<String?>? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DropdownButton<String>(
        value: currentGrade,
        iconSize: 24,
        elevation: 16,
        dropdownColor: Colors.white,
        hint: const Text(
          AppString.grade,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        underline: const SizedBox(),
        style: const TextStyle(color: Colors.black, fontSize: 16),
        onChanged: onChanged,
        isExpanded: true,
        items: AppString.grades.map<DropdownMenuItem<String>>((String grade) {
          return DropdownMenuItem<String>(
            value: grade,
            child: Text(grade),
          );
        }).toList(),
      ),
    );
  }
}
