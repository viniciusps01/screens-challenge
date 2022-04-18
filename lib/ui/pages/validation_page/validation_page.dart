import 'package:flutter/material.dart';

class ValidationPage extends StatelessWidget {
  const ValidationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 10,
        ),
        child: Text(
          'Validação Token/Senha',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
