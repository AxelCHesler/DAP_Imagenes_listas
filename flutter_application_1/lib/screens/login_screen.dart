import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/entities/producto.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flores disponibles")),
      body: ListView.builder(
        itemCount: flores.nombres.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  flores.imagenes[index],
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(flores.nombres[index]),
              subtitle: Text(flores.descripciones[index]),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                context.go(
                  "/home_screen",
                  extra: {
                    "nombre": flores.nombres[index],
                    "descripcion": flores.descripciones[index],
                    "imagen": flores.imagenes[index],
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
