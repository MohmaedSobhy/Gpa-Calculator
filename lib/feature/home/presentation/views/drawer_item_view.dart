import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';

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
              Icons.school,
              color: AppColor.darkBlue,
              size: 25,
            ),
            title: const Text('Edit Grades'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.bookmark,
              color: AppColor.darkBlue,
              size: 25,
            ),
            title: const Text('Saved Grades'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
