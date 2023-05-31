import 'package:flutter/material.dart';
import 'package:calculadora/paginas/calculadora.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Primera Calculadora',
      initialRoute: '/',
      routes: {'/': (context) => Calculadora()},
    );
  }
}
