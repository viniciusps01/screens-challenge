import 'package:flutter/material.dart';
import 'package:screens_challenge/theming/themes.dart';
import 'package:screens_challenge/ui/pages/home_pix_page/home_pix_page.dart';
import 'package:screens_challenge/ui/pages/key_registering_page/key_registering_page.dart';
import 'package:screens_challenge/ui/pages/keys_menu_page/keys_menu_page.dart';

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
