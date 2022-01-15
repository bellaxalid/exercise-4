import 'package:flutter/material.dart';

import 'package:ex4/screens/edit/edit_screen.dart';
import 'package:ex4/screens/login/login_screen.dart';
import 'package:ex4/screens/main/main_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => const MainScreen());
    case '/login':
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case '/edit':
      return MaterialPageRoute(builder: (context) => const EditScreen());
    default:
      return MaterialPageRoute(builder: (context) => const MainScreen());
  }
}
