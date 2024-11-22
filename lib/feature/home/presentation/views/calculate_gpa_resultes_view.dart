import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/feature/home/presentation/controller/home_screen_cubit.dart';
import 'package:gpa_culator/feature/home/presentation/widgets/gpa_resultes_widget.dart';

class CalculateGpaResultesView extends StatefulWidget {
  const CalculateGpaResultesView({super.key});

  @override
  State<CalculateGpaResultesView> createState() =>
      _CalculateGpaResultesViewState();
}

class _CalculateGpaResultesViewState extends State<CalculateGpaResultesView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0), // Start from the left
      end: Offset.zero, // End at the normal position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        if (state is CalculateGpaLoading) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColor.darkBlue,
            ),
          );
        }
        if (state is GpaResultesDone) {
          _controller.reset();
          _controller.forward();
          return SlideTransition(
            position: _offsetAnimation,
            child: GpaResultesWidgets(),
          );
        }
        return const SizedBox();
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
