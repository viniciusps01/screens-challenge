import 'package:flutter/material.dart';
import 'package:screens_challenge/ui/widgets/grey_button.dart';

import '../../widgets/pix_key.dart';

class RegisteredKeysPage extends StatelessWidget {
  const RegisteredKeysPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Minhas Chaves',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  const PixKey(
                    showIcon: true,
                    title: 'Pix Chave CPF',
                    value: '123.123.123.12',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: GreyButton(
              onPressed: () {},
              label: 'Cadastrar chave',
            ),
          )
        ],
      ),
    );
  }
}
