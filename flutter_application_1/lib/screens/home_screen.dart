import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String imagen;

  const HomeScreen({
    super.key,
    required this.nombre,
    required this.descripcion,
    required this.imagen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nombre)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(imagen, height: 250),
            const SizedBox(height: 20),
            Text(
              nombre,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(descripcion, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
