import 'package:flutter/material.dart';

import 'icons_accessibility.dart';

class ImagesAccessibilityPage extends StatelessWidget {
  const ImagesAccessibilityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acessibilidade em Imagens'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //Imagem sem acessibilidade
            Expanded(
              child: Image.network('https://picsum.photos/id/237/200/300'),
            ),
            const SizedBox(
              height: 20,
            ),
            //Imagem com acessibilidade
            Expanded(
              child: Image.network(
                'https://picsum.photos/id/237/200/300',
                semanticLabel: 'Foto de um doguinho lindo',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const IconsAccessibilityPage(),
            ),
          );
        },
        tooltip: "Ir para próxima página",
        child: const Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}
