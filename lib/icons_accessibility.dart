import 'package:flutter/material.dart';

import 'buttons_accessibility.dart';

class IconsAccessibilityPage extends StatelessWidget {
  const IconsAccessibilityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acessibilidade em Ícones'),
      ),
      body: Semantics(
        container: false,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              // Ícone sem acessibilidade
              Icon(
                Icons.add_alert,
                size: 42,
              ),
              SizedBox(
                height: 20,
              ),
              // Ícone com acessibilidade
              Icon(
                Icons.add_alert,
                size: 42,
                semanticLabel: 'Adicionar alarme',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const ColumnsAccessibilityPage(),
            ),
          );
        },
        tooltip: "Ir para próxima página",
        child: const Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}
