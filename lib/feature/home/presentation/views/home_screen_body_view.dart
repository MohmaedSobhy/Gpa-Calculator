import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/feature/home/presentation/views/home_custome_scroll_view.dart.dart';
import 'package:gpa_culator/feature/home/presentation/widgets/custome_button.dart';

import '../controller/home_screen_cubit.dart';

class HomeScreenBodyView extends StatelessWidget {
  const HomeScreenBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      child: Column(
        children: [
          const Expanded(
            child: HomeCustomeScrollView(),
          ),
          CustomeButton(
            title: 'Calculate',
            backGround: AppColor.darkBlue,
            onTap: () {
              if (HomeScreenCubit.instanse.formKey.currentState!.validate()) {
                HomeScreenCubit.instanse.getSubjectValues();
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
