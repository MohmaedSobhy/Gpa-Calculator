import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';

class CustomeTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final TextInputType inputType;
  const CustomeTextFormField({
    super.key,
    required this.controller,
    required this.hint,
    required this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColor.grey,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          fontSize: 15,
          color: Colors.grey,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
