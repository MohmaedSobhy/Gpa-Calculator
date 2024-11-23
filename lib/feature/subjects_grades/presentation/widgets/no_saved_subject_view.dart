import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/core/theme/app_text_styles.dart';
import 'package:gpa_culator/core/utils/app_string.dart';

class NoSavedSubjectView extends StatelessWidget {
  const NoSavedSubjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.school,
            color: AppColor.darkBlue,
            size: 80,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            AppString.noSavedSubjects,
            textAlign: TextAlign.center,
            style: AppTextStyles.blackTextStyle,
          )
        ],
      ),
    );
  }
}
