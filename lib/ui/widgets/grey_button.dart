import 'package:flutter/material.dart';
import 'package:screens_challenge/theming/colors.dart';

class GreyButton extends StatelessWidget {
  final String label;
  final Function() onPressed;

  const GreyButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: secondaryColor,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: primaryColor,
        ),
      ),
    );
  }
}
