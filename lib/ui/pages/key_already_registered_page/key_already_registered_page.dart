import 'package:flutter/material.dart';
import 'package:screens_challenge/ui/widgets/grey_button.dart';
import 'package:screens_challenge/ui/widgets/pix_key.dart';

import '../../widgets/orange_button.dart';

class KeyAlreadyRegisteredPage extends StatelessWidget {
  const KeyAlreadyRegisteredPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close),
          )
        ],
      ),
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
                    'Chave cadastrada em outra instituição!',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  const Text('O CPF 123.456.789-00 já está cadastrado'
                      ' em outra instituição. Para cadastrar esta'
                      ' chave aqui com a gente é necessário que '
                      'você descadastre lá para depois fazer este'
                      ' processo aqui.'),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: OrangeButton(
              onPressed: () {},
              label: 'Cadastrar outra chave',
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: GreyButton(
              onPressed: () {},
              label: 'Finalizar',
            ),
          )
        ],
      ),
    );
  }
}
