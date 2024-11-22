import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/feature/home/presentation/controller/home_screen_cubit.dart';

class SubjectsListViewItem extends StatefulWidget {
  const SubjectsListViewItem({super.key});

  @override
  State<SubjectsListViewItem> createState() => _SubjectsListViewItemState();
}

class _SubjectsListViewItemState extends State<SubjectsListViewItem> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: AnimatedList(
        key: HomeScreenCubit.instanse.listKey,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        initialItemCount: HomeScreenCubit.instanse.fields.length,
        itemBuilder: (context, index, animation) {
          return Row(
            children: [
              Expanded(
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1.0, 0.0), // Start from the left
                    end: const Offset(0.0, 0.0), // End at the current position
                  ).animate(animation),
                  child: HomeScreenCubit.instanse.fields[index],
                ),
              ),
              IconButton(
                onPressed: () {
                  removeItem(index);
                },
                color: AppColor.darkBlue,
                icon: const Icon(Icons.cancel_outlined),
              ),
            ],
          );
        },
      ),
    );
  }

  void removeItem(int index) {
    HomeScreenCubit.instanse.fields.removeAt(index);

    HomeScreenCubit.instanse.listKey.currentState?.removeItem(
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
      duration: const Duration(milliseconds: 300),
    );
  }
}
