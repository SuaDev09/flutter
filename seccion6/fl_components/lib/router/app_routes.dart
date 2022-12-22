import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  //Un metodo static es una propiedad que se puede acceder sin necesidad de instanciar la clase
  //es decir que se puede acceder desde cualquier llugar

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    MenuOption(
        route: 'home',
        icon: Icons.adb_rounded,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt_rounded,
        name: 'List view Tipo 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.ac_unit_sharp,
        name: 'List view Tipo 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert_sharp,
        name: 'Alertas',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_travel_rounded,
        name: 'Cards',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.person,
        name: 'Avatars',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_outline_outlined,
        name: 'Animated screens',
        screen: const AnimatedScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  //En caso de que se quiera entrar a una pagina con una ruta inexistente
  //Se manda a la homescreen
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
