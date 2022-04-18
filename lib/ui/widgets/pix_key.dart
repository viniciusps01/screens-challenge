import 'package:flutter/material.dart';

class PixKey extends StatelessWidget {
  final bool showIcon;
  final String title;
  final String value;

  const PixKey({
    Key? key,
    required this.title,
    required this.value,
    this.showIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: !showIcon
          ? null
          : Icon(
              Icons.key,
              color: Theme.of(context).primaryColor,
              size: 25,
            ),
      horizontalTitleGap: 0,
      contentPadding: const EdgeInsets.all(0),
      visualDensity: const VisualDensity(vertical: -4),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        value,
        style: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
