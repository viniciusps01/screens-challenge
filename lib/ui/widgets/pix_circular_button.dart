import 'package:flutter/material.dart';

class PixCircularButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final double iconSize;

  const PixCircularButton({
    Key? key,
    required this.title,
    required this.iconData,
    this.iconSize = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          transformAlignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(0, 0),
                blurRadius: 2,
              )
            ],
          ),
          child: Icon(
            iconData,
            size: iconSize,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
        )
      ],
    );
  }
}
