import 'package:flutter/material.dart';
import 'frdy_theme.dart';
import 'home.dart';

void main() {
  runApp(Frdy());
}

class Frdy extends StatelessWidget {
  Frdy({Key? key}) : super(key: key);

  final theme = FrdyTheme.dark();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: theme, title: 'Frdy', home: const Home());
  }
}
