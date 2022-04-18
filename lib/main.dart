import 'package:flutter/material.dart';
import 'package:screens_challenge/theming/themes.dart';
import 'package:screens_challenge/ui/pages/home_pix_page/home_pix_page.dart';
import 'package:screens_challenge/ui/pages/key_already_registered_page/key_already_registered_page.dart';
import 'package:screens_challenge/ui/pages/key_registering_page/key_registering_page.dart';
import 'package:screens_challenge/ui/pages/keys_menu_page/keys_menu_page.dart';
import 'package:screens_challenge/ui/pages/message_page/message_page.dart';

import 'ui/pages/cpf_key_page/cpf_key_page.dart';
import 'ui/pages/signup_success_page/signup_success_page.dart';
import 'ui/pages/validation_page/validation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screens Challenge',
      theme: defaultTheme,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () => goToPage(
                context,
                const HomePixPage(),
              ),
              child: const Text('Home Pix'),
            ),
            OutlinedButton(
              onPressed: () => goToPage(
                context,
                const KeyRegisteringPage(),
              ),
              child: const Text('Cadastro Chave'),
            ),
            OutlinedButton(
              onPressed: () => goToPage(
                context,
                const KeysMenuPage(),
              ),
              child: const Text('Menu Chaves'),
            ),
            OutlinedButton(
              onPressed: () => goToPage(
                context,
                const CPFKeyPage(),
              ),
              child: const Text('Chave CPF'),
            ),
            OutlinedButton(
              onPressed: () => goToPage(
                context,
                const ValidationPage(),
              ),
              child: const Text('Validação'),
            ),
            OutlinedButton(
              onPressed: () => goToPage(
                context,
                const MessagePage(),
              ),
              child: const Text('Recado'),
            ),
            OutlinedButton(
              onPressed: () => goToPage(
                context,
                const SignupSuccessPage(),
              ),
              child: const Text('Cadastro Realizado'),
            ),
            OutlinedButton(
              onPressed: () => goToPage(
                context,
                const KeyAlreadyRegisteredPage(),
              ),
              child: const Text('Chave já Cadastrada'),
            )
          ],
        ),
      ),
    );
  }

  goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => page),
    );
  }
}
