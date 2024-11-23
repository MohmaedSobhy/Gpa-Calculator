import 'package:bloc/bloc.dart';
import 'package:gpa_culator/core/services/sql_lite_services.dart';
import 'package:gpa_culator/feature/subjects_grades/data/model/subject_model.dart';
import 'package:meta/meta.dart';

part 'subjects_grade_state.dart';

class SubjectsGradeCubit extends Cubit<SubjectsGradeState> {
  SubjectsGradeCubit._() : super(SubjectsGradeInitial());
  static SubjectsGradeCubit instanse = SubjectsGradeCubit._();

  void loadingAllSubjectGrades() {
    emit(LoadingSavedGrades());
    try {
      AppData.getAllSubjects().then((subjects) {
        emit(SavedGradesLoadingSuccefully(subjects: subjects));
      });
    } catch (error) {
      emit(SavedGradesLoadingFailed());
    }
  }
}
