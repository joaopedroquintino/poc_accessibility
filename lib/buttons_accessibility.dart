import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import 'semantics_accessibility.dart';

class ColumnsAccessibilityPage extends StatelessWidget {
  const ColumnsAccessibilityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bitcoins = 1000.00;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Botões e texto',
          semanticsLabel: 'Acessibilidade em botões e texto',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Botões de ícone:'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // IconButton padrão
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_alert),
                ),
                // IconButton com melhoria para leitores de tela
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_alert),
                  tooltip: 'Adicionar alarme',
                ),
              ],
            ),
            const Text('Botões de texto:'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // TextButton padrão
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '₿ $bitcoins ',
                  ),
                ),
                // TextButton com melhoria para leitores de tela
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '₿ $bitcoins ',
                    semanticsLabel:
                        '$bitcoins bitcoins. Toque para abrir o extrato',
                  ),
                ),
              ],
            ),
            const Text('Botões padrão:'),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CloseButton(),
                    SizedBox(
                      height: 30,
                    ),
                    BackButton(),
                  ],
                ),
              ],
            ),
            const Text(
              'Texto com decoração (RichText)',
              semanticsLabel: 'Texto com decoração',
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Este texto está normal. ',
                  ),
                  TextSpan(
                    text: 'Este texto está riscado. ',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  TextSpan(
                    text: 'Este texto está sublinhado. ',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: 'Este texto está em negrito. ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const SemanticsAccessibilityPage(),
            ),
          );
        },
        tooltip: "Ir para próxima página",
        child: const Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}
