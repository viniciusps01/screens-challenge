import 'package:flutter/material.dart';

import '../../widgets/custom_list_tile.dart';

class KeysMenuPage extends StatelessWidget {
  const KeysMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cadastrar Chave',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 30),
            const CustomListTile(
              title: 'CPF',
            ),
            const SizedBox(height: 15),
            const CustomListTile(
              title: 'Celular',
            ),
            const SizedBox(height: 15),
            const CustomListTile(
              title: 'Email',
            ),
            const SizedBox(height: 15),
            const CustomListTile(
              title: 'Aleatória',
            ),
          ],
        ),
      ),
    );
  }
}
