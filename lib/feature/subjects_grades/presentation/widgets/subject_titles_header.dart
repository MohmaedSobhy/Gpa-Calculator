import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/core/theme/app_text_styles.dart';
import 'package:gpa_culator/core/utils/app_string.dart';

class SubjectTitlesHeader extends StatelessWidget {
  const SubjectTitlesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.light,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppString.subject,
            style: AppTextStyles.black18Style,
          ),
          Text(
            AppString.grade,
            style: AppTextStyles.black18Style,
          ),
          Text(
            AppString.credits,
            style: AppTextStyles.black18Style,
          ),
        ],
      ),
    );
  }
}
