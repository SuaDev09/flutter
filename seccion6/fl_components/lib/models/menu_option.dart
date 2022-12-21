import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route; //Ruta tal cual
  final IconData icon;
  final String name; //Nombre de la ruta
  final Widget screen; //Pantalla

  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
