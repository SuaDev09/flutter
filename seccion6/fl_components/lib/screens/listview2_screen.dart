import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
        ),
        //Se construyen de manera perezosa
        //.builder no tiene seperatorbuilder
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined,
                color: AppTheme.primary),
            onTap: () {
              final game = options[index];
              print(game);
            },
          ),
          //Retorna un widget
          //_, __ argumentos que no seran necesarios
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
