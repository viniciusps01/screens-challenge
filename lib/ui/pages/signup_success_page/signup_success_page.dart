import 'package:flutter/material.dart';
import 'package:screens_challenge/ui/widgets/grey_button.dart';
import 'package:screens_challenge/ui/widgets/pix_key.dart';

import '../../widgets/orange_button.dart';

class SignupSuccessPage extends StatelessWidget {
  const SignupSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Icon(
            Icons.check_circle,
            size: 30,
            color: Colors.black,
          ),
        ),
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
                    'Cadastro realizado com sucesso',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  const PixKey(
                    title: 'Pix Chave CPF',
                    value: '123.123.123.12',
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: OrangeButton(
              onPressed: () {},
              label: 'Compartilhar',
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
