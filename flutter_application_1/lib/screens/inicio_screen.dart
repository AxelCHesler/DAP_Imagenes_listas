import 'package:flutter/material.dart';
import 'package:flutter_application_1/entities/users.dart';
import 'package:go_router/go_router.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({super.key});

  @override
  State<InicioScreen> createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  Users user = Users(user: [], pass: []);

  String title = "Login";
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 👈 No es necesario envolver en otro MaterialApp
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userController,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: "Usuario",
              ),
            ),
            TextField(
              controller: passController,
              decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "Contraseña",
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (user.user.contains(userController.text) &&
                    user.pass.contains(passController.text)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Login correcto")),
                  );
                  setState(() {
                    title = "Bienvenido";
                    context.go("/login");
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Login incorrecto")),
                  );
                }
              },
              child: const Text("Ingresar"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (user.user.contains(userController.text)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Usuario repetido")),
                  );
                } else {
                  user.user.add(userController.text);
                  user.pass.add(passController.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Usuario ingresado correctamente"),
                    ),
                  );
                }
              },
              child: const Text("Nuevo usuario"),
            ),
          ],
        ),
      ),
    );
  }
}
