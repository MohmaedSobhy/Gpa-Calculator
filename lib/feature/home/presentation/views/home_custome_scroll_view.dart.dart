import 'package:flutter/material.dart';
import 'package:gpa_culator/feature/home/presentation/views/calculate_gpa_resultes_view.dart';
import 'package:gpa_culator/feature/home/presentation/views/custome_subjects_view.dart';
import 'package:gpa_culator/feature/home/presentation/views/semester_gpa_view.dart';

class HomeCustomeScrollView extends StatelessWidget {
  const HomeCustomeScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SemesterGpaView(),
        ),
        SliverToBoxAdapter(
          child: CalculateGpaResultesView(),
        ),
        SliverToBoxAdapter(
          child: CustomeSubjectsView(),
        ),
      ],
    );
  }
}
