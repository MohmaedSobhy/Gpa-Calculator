part of 'subjects_grade_cubit.dart';

@immutable
sealed class SubjectsGradeState {}

final class SubjectsGradeInitial extends SubjectsGradeState {}

final class LoadingSavedGrades extends SubjectsGradeState {}

final class SavedGradesLoadingSuccefully extends SubjectsGradeState {
  final List<SubjectModel> subjects;
  SavedGradesLoadingSuccefully({required this.subjects});
}

final class SavedGradesLoadingFailed extends SubjectsGradeState {}
