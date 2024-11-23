import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/core/utils/app_string.dart';
import 'package:gpa_culator/feature/about/presentation/views/about_screen_body_view.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.about),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Padding(
            padding: EdgeInsetsDirectional.only(start: 10),
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColor.darkBlue,
              size: 25,
            ),
          ),
        ),
      ),
      body: const AboutScreenBodyView(),
    );
  }
}
