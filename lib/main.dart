import 'package:flutter/material.dart';
import 'pantalla_inicio.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación Básica en Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PantallaInicio(),
      debugShowCheckedModeBanner: false,
    );
  }
}
