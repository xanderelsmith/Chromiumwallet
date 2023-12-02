import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.icon,
    required this.name,
    super.key,
  });
  final Icon icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          child: icon,
        ),
        Text(name)
      ],
    );
  }
}
