import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';

void showDialogeMessage(BuildContext context, {required String title}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: Icon(
                  Icons.school,
                  size: 50,
                  color: AppColor.darkBlue,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
  Timer(const Duration(seconds: 1), () {
    Navigator.of(context).pop();
  });
}
