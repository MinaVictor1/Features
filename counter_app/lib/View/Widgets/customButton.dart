import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData iconData; // Icon parameter

  const CustomButton({
    Key? key,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
      ),
      child: IconButton(
        onPressed: onPressed, // Call the onPressed function here
        icon: Icon(
          iconData,
          size: 60,
        ),
      ),
    );
  }
}
