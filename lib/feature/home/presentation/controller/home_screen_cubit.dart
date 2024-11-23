import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:gpa_culator/core/services/column_keys.dart';
import 'package:gpa_culator/core/services/sql_lite_services.dart';
import 'package:gpa_culator/core/utils/app_string.dart';
import 'package:gpa_culator/feature/home/presentation/widgets/course_field_item.dart';
import 'package:meta/meta.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit._() : super(HomeScreenInitial());
  static HomeScreenCubit instanse = HomeScreenCubit._();
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List<CourseFieldItem> fields = [];
  TextEditingController currentGpaController = TextEditingController();
  TextEditingController creditsController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  double semesterGpa = 0, cumlativeGpa = 0;
  int totalCredits = 0;
  void addSubjectField() {
    int lenght = fields.length;
    listKey.currentState?.insertItem(
      lenght,
      duration: const Duration(milliseconds: 200),
    );
    fields.add(
      CourseFieldItem(
        courseNameController: TextEditingController(),
        creditsController: TextEditingController(),
      ),
    );
  }

  void getSubjectValues() async {
    emit(CalculateGpaLoading());
    await calculateResultes();
    emit(GpaResultesDone());
  }

  Future<void> calculateResultes() async {
    double totalPoints = 0;
    int currentCredits = 0;

    for (CourseFieldItem item in fields) {
      totalPoints += AppString.gradePoints[item.selectedGrade]! *
          int.parse(item.creditsController.text.toString());
      currentCredits += int.parse(item.creditsController.text.toString());
    }

    semesterGpa = totalPoints / currentCredits;
    int oldCredits = getOldCredits();
    totalCredits = currentCredits + oldCredits;

    cumlativeGpa =
        ((getComulativeGpa() * oldCredits) + totalPoints) / totalCredits;

    cumlativeGpa = double.parse(cumlativeGpa.toStringAsFixed(2));
    semesterGpa = double.parse(semesterGpa.toStringAsFixed(2));
  }

  int getOldCredits() {
    return int.parse(creditsController.text.toString().isEmpty
        ? '0'
        : creditsController.text.toString());
  }

  double getComulativeGpa() {
    return double.parse(currentGpaController.text.toString().isEmpty
        ? '0.0'
        : currentGpaController.text.toString());
  }

  void savedSubjectGrades() async {
    emit(SaveGradesLoading());
    try {
      for (CourseFieldItem item in fields) {
        await AppData.insertDB({
          ColumnKey.subjectName: item.courseNameController.text.toString(),
          ColumnKey.subjectGrade: item.selectedGrade.toString(),
          ColumnKey.credits: item.creditsController.toString(),
        });
      }
      emit(SaveGradesSuccess());
    } catch (error) {
      emit(SaveGradesFailed());
    }
  }

  void removeWidgetFromAnimatedList(index) {
    fields.removeAt(index);

    listKey.currentState?.removeItem(
      index,
      (context, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 0.0), // Start at the item's position
            end: const Offset(2.0, 0.0), // Move off-screen to the right
          ).animate(animation),
          child: const SizedBox(),
        );
      },
      duration: const Duration(milliseconds: 1),
    );
  }
}
