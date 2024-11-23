import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/feature/subjects_grades/presentation/controller/subjects_grade_cubit.dart';
import 'package:gpa_culator/feature/subjects_grades/presentation/views/all_saved_subject_view.dart';
import 'package:gpa_culator/feature/subjects_grades/presentation/widgets/no_saved_subject_view.dart';

class SubjectGradesBody extends StatelessWidget {
  const SubjectGradesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: SubjectsGradeCubit.instanse..loadingAllSubjectGrades(),
      child: BlocBuilder<SubjectsGradeCubit, SubjectsGradeState>(
        builder: (context, state) {
          if (state is LoadingSavedGrades) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.darkBlue,
              ),
            );
          } else if (state is SavedGradesLoadingSuccefully) {
            if (state.subjects.isEmpty) {
              return const NoSavedSubjectView();
            }
            return AllSavedSubjectView(allSubjects: state.subjects);
          }
          return const NoSavedSubjectView();
        },
      ),
    );
  }
}
