import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final String title;
  final Color backGround;
  final double? width;
  final VoidCallback onTap;

  const CustomeButton({
    super.key,
    required this.title,
    required this.backGround,
    required this.onTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: backGround,
      minWidth: width ?? double.infinity,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
    );
  }
}
