import 'package:flutter/material.dart';
import 'package:gpa_culator/feature/subjects_grades/data/model/subject_model.dart';
import 'package:gpa_culator/feature/subjects_grades/presentation/widgets/subject_item.dart';
import 'package:gpa_culator/feature/subjects_grades/presentation/widgets/subject_titles_header.dart';

class AllSavedSubjectView extends StatelessWidget {
  final List<SubjectModel> allSubjects;
  const AllSavedSubjectView({super.key, required this.allSubjects});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SubjectTitlesHeader(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 15,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: allSubjects.length,
                  itemBuilder: (context, index) {
                    return SubjectItem(subjectModel: allSubjects[index]);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
