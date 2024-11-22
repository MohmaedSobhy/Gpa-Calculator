import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
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
}
