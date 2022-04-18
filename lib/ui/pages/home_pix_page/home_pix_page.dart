import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screens_challenge/ui/widgets/custom_list_tile.dart';
import 'package:screens_challenge/ui/widgets/pix_circular_button.dart';

class HomePixPage extends StatelessWidget {
  const HomePixPage({Key? key}) : super(key: key);

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
              'Pix',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 30),
            Row(
              children: const [
                PixCircularButton(
                  title: 'Pagar',
                  iconData: Icons.qr_code,
                ),
                SizedBox(width: 20),
                PixCircularButton(
                  title: 'Receber',
                  iconData: Icons.payments_outlined,
                ),
                SizedBox(width: 20),
                PixCircularButton(
                  title: 'Copia e Cola',
                  iconData: Icons.copy,
                )
              ],
            ),
            const SizedBox(height: 30),
            const CustomListTile(
              title: 'Cadastrar Chaves',
              leadingIconData: Icons.add,
            ),
            const SizedBox(height: 15),
            const CustomListTile(
              title: 'Extrato',
              leadingIconData: Icons.feed_sharp,
            ),
            const SizedBox(height: 15),
            const CustomListTile(
              title: 'Minhas Chaves',
              leadingIconData: Icons.key,
            ),
            const SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}
