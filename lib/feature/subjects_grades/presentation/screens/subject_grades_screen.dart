import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/core/utils/app_string.dart';
import 'package:gpa_culator/feature/subjects_grades/presentation/views/subject_grades_body.dart';

class SubjectGradesScreen extends StatelessWidget {
  const SubjectGradesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.subjectGrade),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Padding(
            padding: EdgeInsetsDirectional.only(start: 10),
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColor.darkBlue,
            ),
          ),
        ),
      ),
      body: const SubjectGradesBody(),
    );
  }
}
