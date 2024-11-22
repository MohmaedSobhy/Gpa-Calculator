import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/core/utils/app_string.dart';
import 'package:gpa_culator/feature/home/presentation/controller/home_screen_cubit.dart';
import 'package:gpa_culator/feature/home/presentation/widgets/custome_text_field.dart';

class SemesterGpaTextFields extends StatelessWidget {
  const SemesterGpaTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: AppColor.grey,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsetsDirectional.only(start: 6),
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: AppColor.grey,
                  ),
                ),
              ),
              child: CustomeTextFormField(
                controller: HomeScreenCubit.instanse.currentGpaController,
                hint: AppString.currentGpa,
                inputType: TextInputType.number,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsetsDirectional.only(start: 5),
              child: CustomeTextFormField(
                controller: HomeScreenCubit.instanse.creditsController,
                hint: AppString.totalCredits,
                inputType: TextInputType.number,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
