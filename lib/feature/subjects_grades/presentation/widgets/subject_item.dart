import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/core/theme/app_text_styles.dart';
import 'package:gpa_culator/feature/subjects_grades/data/model/subject_model.dart';

class SubjectItem extends StatelessWidget {
  final SubjectModel subjectModel;
  const SubjectItem({super.key, required this.subjectModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subjectModel.subjectName,
                style: AppTextStyles.black18Style,
              ),
              Text(
                subjectModel.subjectGrade,
                style: AppTextStyles.black18Style,
              ),
              Text(
                subjectModel.subjectCredits,
                style: AppTextStyles.black18Style,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: AppColor.grey,
          ),
        ],
      ),
    );
  }
}
