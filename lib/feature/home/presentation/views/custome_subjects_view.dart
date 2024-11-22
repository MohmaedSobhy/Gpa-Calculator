import 'package:flutter/material.dart';
import 'package:gpa_culator/feature/home/presentation/views/subjects_list_view_item.dart';
import 'package:gpa_culator/feature/home/presentation/widgets/add_course_button.dart';

class CustomeSubjectsView extends StatelessWidget {
  const CustomeSubjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SubjectsListViewItem(),
            AddCourseButton(),
          ],
        ),
      ),
    );
  }
}
