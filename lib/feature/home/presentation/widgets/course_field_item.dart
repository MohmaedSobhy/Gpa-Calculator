import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/core/utils/app_string.dart';
import 'package:gpa_culator/core/utils/app_validator.dart';
import 'package:gpa_culator/feature/home/presentation/widgets/custome_text_field.dart';

import 'drop_down_list_items.dart';

// ignore: must_be_immutable
class CourseFieldItem extends StatefulWidget {
  final TextEditingController courseNameController;
  final TextEditingController creditsController;
  String? selectedGrade;

  CourseFieldItem({
    super.key,
    required this.courseNameController,
    required this.creditsController,
    this.selectedGrade,
  });

  @override
  State<CourseFieldItem> createState() => _CourseFieldItemState();
}

class _CourseFieldItemState extends State<CourseFieldItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 8,
        end: 8,
        bottom: 8,
        top: 3,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1,
            color: AppColor.grey,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 8),
              child: CustomeTextFormField(
                controller: widget.courseNameController,
                hint: AppString.courseName,
                validator: AppValidator.validateCourseName,
                inputType: TextInputType.text,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: AppColor.grey,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 8),
                      child: StatefulBuilder(builder: (context, setState) {
                        return DropDownListItmes(
                          currentGrade: widget.selectedGrade,
                          onChanged: (value) {
                            setState(() {
                              widget.selectedGrade = value;
                            });
                          },
                        );
                      }),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsetsDirectional.only(start: 8),
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: AppColor.grey,
                          ),
                        ),
                      ),
                      child: CustomeTextFormField(
                        controller: widget.creditsController,
                        validator: AppValidator.validateCredits,
                        hint: AppString.credits,
                        inputType: TextInputType.number,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
