import 'package:flutter/material.dart';
import 'package:screens_challenge/ui/pages/key_registering_page/no_registered_keys.dart';
import 'package:screens_challenge/ui/widgets/grey_button.dart';

class KeyRegisteringPage extends StatelessWidget {
  const KeyRegisteringPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
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
                  const Text(
                    'Você ainda não tem chaves cadastradas.',
                  ),
                  Expanded(
                      child: Center(
                    child: Container(
                      width: 200,
                      alignment: Alignment.center,
                      child: const NoRegisteredKeys(),
                    ),
                  ))
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
