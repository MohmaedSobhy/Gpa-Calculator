import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';
import 'package:gpa_culator/feature/about/presentation/screens/about_screen.dart';
import 'package:gpa_culator/feature/subjects_grades/presentation/screens/subject_grades_screen.dart';

class DrawerItemsView extends StatelessWidget {
  const DrawerItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xfff2f7fd),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
            child: DrawerHeader(
                child: Image(
              image: AssetImage('assets/app_logo.png'),
            )),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: AppColor.darkBlue,
              size: 25,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.bookmark,
              color: AppColor.darkBlue,
              size: 25,
            ),
            title: const Text('Saved Grades'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const SubjectGradesScreen();
              }));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.mode_comment,
              color: AppColor.darkBlue,
              size: 25,
            ),
            title: const Text('About'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const AboutScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
