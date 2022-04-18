import 'package:flutter/material.dart';
import 'package:screens_challenge/ui/pages/message_page/info.dart';
import 'package:screens_challenge/ui/widgets/grey_button.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bgColor = Colors.grey.shade800;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: _bgColor,
      ),
      body: Container(
        color: _bgColor,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Column(
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
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: const Icon(Icons.close),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              'Importante',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontSize: 19,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Os dados abaixo ficarão visíveis para quem te enviar uma transferência.',
                      ),
                      const SizedBox(height: 15),
                      const Info(
                        title: 'Nome',
                        subtitle: 'Godofredo de Jesus',
                      ),
                      const Info(
                        title: 'CPF',
                        subtitle: '***.123.123-**',
                      ),
                      const Info(
                        title: 'Instituição de cadastro de chave',
                        subtitle: 'Conta digital Nímia',
                      )
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
        ),
      ),
    );
  }
}
