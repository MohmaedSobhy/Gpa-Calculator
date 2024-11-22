import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gpa_culator/core/utils/app_string.dart';
import 'package:gpa_culator/feature/home/presentation/controller/home_screen_cubit.dart';

class AddCourseButton extends StatelessWidget {
  const AddCourseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          HomeScreenCubit.instanse.addSubjectField();
        },
        child: DottedBorder(
          borderType: BorderType.Rect,
          strokeWidth: 1,
          dashPattern: const [8, 3, 8, 3],
          padding: const EdgeInsets.all(10),
          radius: const Radius.circular(15),
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                AppString.addCourse,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
