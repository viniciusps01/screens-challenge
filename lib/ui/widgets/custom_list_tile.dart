import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData? leadingIconData;
  final double leadingIconSize;

  const CustomListTile({
    Key? key,
    required this.title,
    this.leadingIconData,
    this.leadingIconSize = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            offset: const Offset(0, 0),
            blurRadius: 2,
          ),
        ],
      ),
      child: ListTile(
        leading: leadingIconData == null
            ? null
            : Icon(
                leadingIconData,
                color: Theme.of(context).iconTheme.color,
                size: leadingIconSize,
              ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Theme.of(context).iconTheme.color,
          size: 20,
        ),
        horizontalTitleGap: 0,
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
