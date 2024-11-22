import 'package:flutter/material.dart';
import 'package:gpa_culator/core/utils/app_string.dart';
import 'package:gpa_culator/feature/home/presentation/controller/home_screen_cubit.dart';

class GpaResultesWidgets extends StatelessWidget {
  const GpaResultesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            CustomeRowText(
              title: AppString.semesterGpa,
              result: HomeScreenCubit.instanse.semesterGpa,
            ),
            CustomeRowText(
              title: AppString.comulativeGpa,
              result: HomeScreenCubit.instanse.cumlativeGpa,
            ),
            CustomeRowText(
              title: AppString.semesterCredits,
              result: HomeScreenCubit.instanse.totalCredits,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomeRowText extends StatelessWidget {
  final String title;
  final num result;
  const CustomeRowText({super.key, required this.title, required this.result});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 8),
      child: Row(
        children: [
          Text(
            '$title : ',
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          Text(
            '$result',
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
