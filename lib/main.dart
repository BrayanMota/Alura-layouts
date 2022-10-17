import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'themes/my_theme.dart';

void main() {
  runApp(const Alubank());
}

class Alubank extends StatelessWidget {
  const Alubank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alubank',
      theme: myTheme,
      home: const Home(),
    );
  }
}
