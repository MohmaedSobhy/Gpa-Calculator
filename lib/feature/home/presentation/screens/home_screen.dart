import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/core/utils/app_string.dart';
import 'package:gpa_culator/feature/home/presentation/controller/home_screen_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpa_culator/feature/home/presentation/views/drawer_item_view.dart';
import 'package:gpa_culator/feature/home/presentation/views/home_screen_body_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenCubit.instanse,
      child: Scaffold(
        drawer: const DrawerItemsView(),
        appBar: AppBar(
          title: const Text(
            AppString.gpaCalculator,
            style: TextStyle(
              color: AppColor.darkBlue,
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                log(' Save Grades');
              },
              icon: const Icon(
                Icons.bookmark,
                color: AppColor.darkBlue,
              ),
            )
          ],
        ),
        body: const HomeScreenBodyView(),
      ),
    );
  }
}
