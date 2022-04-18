import 'package:flutter/material.dart';

class NoRegisteredKeys extends StatelessWidget {
  const NoRegisteredKeys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(
          Icons.key,
          size: 50,
        ),
        Text(
          'Você ainda não tem chaves cadastradas.',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
