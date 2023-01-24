import 'package:flutter/material.dart';

import 'images_accessibility.dart';

class SemanticsAccessibilityPage extends StatelessWidget {
  const SemanticsAccessibilityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agrupamento de informações'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Sem nenhuma acessibilidade adicionada
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Informações A'),
                    Row(
                      children: const [
                        Text('Info A1:'),
                        Text('US\$1.000,00'),
                      ],
                    ),
                    Row(
                      children: const [
                        Text('Info A2:'),
                        Text('15/12'),
                      ],
                    ),
                    Row(
                      children: const [
                        Text('Info A3:'),
                        Text('40%'),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Informações B'),
                    Row(
                      children: const [Text('Info B1:'), Text('R\$1.200,45')],
                    ),
                    Row(
                      children: const [
                        Text('Info B2:'),
                        Text('31/01'),
                      ],
                    ),
                    Row(
                      children: const [
                        Text('Info B3:'),
                        Text('25%'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            //Melhorando ordem de leitura
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Semantics(
                  container: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Informações A'),
                      Row(
                        children: const [
                          Text('Info A1:'),
                          Text('US\$1.000,00'),
                        ],
                      ),
                      Row(
                        children: const [
                          Text('Info A2:'),
                          Text('15/12'),
                        ],
                      ),
                      Row(
                        children: const [
                          Text('Info A3:'),
                          Text('40%'),
                        ],
                      ),
                    ],
                  ),
                ),
                Semantics(
                  container: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Informações B'),
                      Row(
                        children: const [Text('Info B1:'), Text('R\$1.200,45')],
                      ),
                      Row(
                        children: const [
                          Text('Info B2:'),
                          Text('31/01'),
                        ],
                      ),
                      Row(
                        children: const [
                          Text('Info B3:'),
                          Text('25%'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Melhorando agrupamento
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Semantics(
                  container: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Informações A'),
                      Semantics(
                        container: true,
                        child: Row(
                          children: const [
                            Text('Info A1:'),
                            Text('US\$1.000,00'),
                          ],
                        ),
                      ),
                      Semantics(
                        container: true,
                        child: Row(
                          children: const [
                            Text('Info A2:'),
                            Text('15/12'),
                          ],
                        ),
                      ),
                      Semantics(
                        container: true,
                        child: Row(
                          children: const [
                            Text('Info A3:'),
                            Text('40%'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Semantics(
                  container: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Informações B'),
                      Semantics(
                        container: true,
                        child: Row(
                          children: const [
                            Text('Info B1:'),
                            Text('R\$1.200,45'),
                          ],
                        ),
                      ),
                      Semantics(
                        container: true,
                        child: Row(
                          children: const [
                            Text('Info B2:'),
                            Text('31/01'),
                          ],
                        ),
                      ),
                      Semantics(
                        container: true,
                        child: Row(
                          children: const [
                            Text('Info B3:'),
                            Text('25%'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const ImagesAccessibilityPage(),
            ),
          );
        },
        tooltip: "Ir para próxima página",
        child: const Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}
